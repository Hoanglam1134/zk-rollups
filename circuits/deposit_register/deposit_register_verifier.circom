pragma circom  2.0.2;
include "../../node_modules/circomlib/circuits/eddsamimc.circom";

// D: account tree depth
// d: new account tree depth
template Main(D, d) {
    var noNewAccount = 2**d;
    var D_d = D-d;

    /* Signals */
    // Public Signals
    signal input depositRegisterRoot;
    signal input registerAccountRoot;
    signal input oldAccountRoot;
    signal input newAccountRoot;

    // Private Signals
    signal input proofEmptyTree[D_d];
    signal input proofPosEmptyTree[D_d];

    signal input senderPubKeyX[noNewAccount];
    signal input senderPubKeyY[noNewAccount];
    signal input receiverPubKeyX[noNewAccount];
    signal input receiverPubKeyY[noNewAccount];
    signal input amount[noNewAccount];
    signal input R8X[noNewAccount];
    signal input R8Y[noNewAccount];
    signal input S[noNewAccount];
    signal input proofTxExist[noNewAccount][d];
    signal input proofPosTxExist[noNewAccount][d];

    // variables
    var hash0List[16] = [
        18560928799293194420552322456901778377346958119315652203206112467801117568374,
        20146106863440695501458138644691091300071143911005438468730958044500575059863,
        14912254718521785794533132013329647391127072370976167592416455059064425991007,
        4908908391849116255729046104086755097627343288084655776379864858281161625707,
        6336925067438789274904340693933120466252047678819867694049987887226633725534,
        12899792043445421187807408401756294031855582550461974898928524258960585269141,
        16959100380875170823283054428518690854372649812500065475365525073088034587834,
        21091416864653949885076982366447492246202815813380463164598922803533279904013,
        415988345246705407411286089535406326232056391505629926444273382638964443831,
        21085382264118145300711525558397152713694144707451312452204266184858981942728,
        5898755207758162788573538170369894980615929765122925590742816663515363410246,
        1330005926393843105383439305489047580207396614092548444145892094306829969947,
        18279067695950923931780694213283340776147767794816260709262940858538001040141,
        900874785802902563431284098869516253257880530661551091336286492985583416122,
        2798825080655784019001757062807675119844105627778752392541648236604635878249,
        18977145006693056439239062351933316051450864262441336283221961077338418046221
    ];

    // Check Signature & the existence of transactions
    component signatureCheck[noNewAccount];
    component converter[noNewAccount];
    component msgHash[noNewAccount];
    component proofExistTxHash[noNewAccount][d];
    for (var i = 0; i < noNewAccount; i++) {
        // hash transaction
        msgHash[i] = MultiMiMC7(6, 91);
        msgHash[i].in[0] <== senderPubKeyX[i];
        msgHash[i].in[1] <== senderPubKeyY[i];
        msgHash[i].in[2] <== receiverPubKeyX[i];
        msgHash[i].in[3] <== receiverPubKeyY[i];
        msgHash[i].in[4] <== amount[i];
        msgHash[i].in[5] <== 0;
        msgHash[i].k <== 6;

        // check signature
        signatureCheck[i] = EdDSAMiMCVerifier();
        signatureCheck[i].enabled <== 1;
        signatureCheck[i].Ax <== senderPubKeyX[i];
        signatureCheck[i].Ay <== senderPubKeyY[i];
        signatureCheck[i].S <== S[i];
        signatureCheck[i].R8x <== R8X[i];
        signatureCheck[i].R8y <== R8Y[i];
        signatureCheck[i].M <== msgHash[i].out;

        // check transaction proof
        proofExistTxHash[i][0] = MultiMiMC7(2, 91);
        proofExistTxHash[i][0].in[0] <== proofTxExist[i][0] + proofPosTxExist[i][0] * (msgHash[i].out - proofTxExist[i][0]);
        proofExistTxHash[i][0].in[1] <== msgHash[i].out +  proofPosTxExist[i][0] * (proofTxExist[i][0] - msgHash[i].out);
        proofExistTxHash[i][0].k <== 2;
        for (var j = 1; j < d; j++) {
            proofExistTxHash[i][j] = MultiMiMC7(2, 91);
            proofExistTxHash[i][j].in[0] <== proofTxExist[i][j] + proofPosTxExist[i][j] * (proofExistTxHash[i][j-1].out - proofTxExist[i][j]);
            proofExistTxHash[i][j].in[1] <== proofExistTxHash[i][j-1].out +  proofPosTxExist[i][j] * (proofTxExist[i][j] - proofExistTxHash[i][j-1].out);
            proofExistTxHash[i][j].k <== 2;
        }
        depositRegisterRoot === proofExistTxHash[i][d-1].out;
    }

    /* Exist Empty Sub for new Account Tree ?  */
    var j = D_d;
    component existSubTreeHash[D_d];
    existSubTreeHash[0] = MultiMiMC7(2, 91);
    existSubTreeHash[0].in[0] <== proofEmptyTree[0] + proofPosEmptyTree[0] * (hash0List[j] - proofEmptyTree[0]);
    existSubTreeHash[0].in[1] <== hash0List[j] + proofPosEmptyTree[0] * (proofEmptyTree[0] - hash0List[j]);
    existSubTreeHash[0].k <== 2;
    for (var i = 1; i < D_d ; i++) {
        j--;
        existSubTreeHash[i] = MultiMiMC7(2, 91);
        existSubTreeHash[i].in[0] <== proofEmptyTree[i] + proofPosEmptyTree[i] * (existSubTreeHash[i-1].out - proofEmptyTree[i]);
        existSubTreeHash[i].in[1] <== existSubTreeHash[i-1].out + proofPosEmptyTree[i] * (proofEmptyTree[i] - existSubTreeHash[i-1].out);
        existSubTreeHash[i].k <== 2;
    }
    existSubTreeHash[D_d-1].out === oldAccountRoot;

    /* Check new Account Root */
    component newAccountRootHash[D_d];
    for (var i = 0; i < D_d ; i++) {
        newAccountRootHash[i] = MultiMiMC7(2, 91);
        newAccountRootHash[i].in[0] <== proofEmptyTree[i] + proofPosEmptyTree[i] * (((i == 0) ? registerAccountRoot : newAccountRootHash[i-1].out) - proofEmptyTree[i]);
        newAccountRootHash[i].in[1] <== ((i == 0) ? registerAccountRoot : newAccountRootHash[i-1].out) + proofPosEmptyTree[i] * (proofEmptyTree[i] - ((i == 0) ? registerAccountRoot : newAccountRootHash[i-1].out));
        newAccountRootHash[i].k <== 2;
    }
    newAccountRootHash[D_d-1].out === newAccountRoot;
}


component main {public [registerAccountRoot, oldAccountRoot, depositRegisterRoot, newAccountRoot]}  = Main(15, 2);