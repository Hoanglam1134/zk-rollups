pragma circom  2.0.2;
include "../../node_modules/circomlib/circuits/eddsamimc.circom";

// D: account tree depth
// d: new account tree depth
template Main(D, d) {
    var noNewAccount = 2**d;
    var D_d = D-d;

    /* Signals */
    // Public Signals
    signal input depositExistenceRoot;
    signal input oldAccountRoot;
    signal input intermediateRoots[noNewAccount];

    // Private Signals
    signal input newAccountHash[noNewAccount];
    signal input proofIntermediateRoots[noNewAccount][d];
    signal input proofPosIntermediateRoots[noNewAccount][d];

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

    // Check Signature & the existence of transactions
    component signatureCheck[noNewAccount];
    component converter[noNewAccount];
    component msgHash[noNewAccount];
    component proofExistTxHash[noNewAccount][d];
    component intermediateRootCheck[noNewAccount][d];
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
        for (var j = 0; j < d; j++) {
            proofExistTxHash[i][j] = MultiMiMC7(2, 91);
            proofExistTxHash[i][j].in[0] <== proofTxExist[i][j] + proofPosTxExist[i][j] * (((j == 0) ? msgHash[i].out : proofExistTxHash[i][j-1].out) - proofTxExist[i][j]);
            proofExistTxHash[i][j].in[1] <== ((j == 0) ? msgHash[i].out : proofExistTxHash[i][j-1].out) +  proofPosTxExist[i][j] * (proofTxExist[i][j] - ((j == 0) ? msgHash[i].out : proofExistTxHash[i][j-1].out));
            proofExistTxHash[i][j].k <== 2;
        }
        depositExistenceRoot === proofExistTxHash[i][d-1].out;
        
        /* 
        check exist account (receiver) = merkle proof
        update balance
        cal intermediate account root (merkle proof) 
        compare intermediate account root 
        */

        // check intermediate account root
        intermediateRootCheck[i][0] = MultiMiMC7(2, 91);
        intermediateRootCheck[i][0].in[0] <== proofIntermediateRoots[i][0] + proofPosIntermediateRoots[i][0] * (newAccountHash[i] - proofIntermediateRoots[i][0]);
        intermediateRootCheck[i][0].in[1] <== newAccountHash[i] +  proofPosIntermediateRoots[i][0] * (proofIntermediateRoots[i][0] - newAccountHash[i]);
        intermediateRootCheck[i][0].k <== 2;
        for (var j = 1; j < d; j++){
            intermediateRootCheck[i][j] = MultiMiMC7(2, 91);
            intermediateRootCheck[i][j].in[0] <== proofIntermediateRoots[i][j] + proofPosIntermediateRoots[i][j] * (intermediateRootCheck[i][j-1].out - proofIntermediateRoots[i][j]);
            intermediateRootCheck[i][j].in[1] <== intermediateRootCheck[i][j-1].out +  proofPosIntermediateRoots[i][j] * (proofIntermediateRoots[i][j] - intermediateRootCheck[i][j-1].out);
            intermediateRootCheck[i][j].k <== 2;
        }
        intermediateRootCheck[i][d-1].out === intermediateRoots[i];
    }
}


component main {public [oldAccountRoot, depositExistenceRoot, intermediateRoots]}  = Main(15, 2);