package helpers

import (
	"fmt"
	"math/big"
	"strings"
	"unicode"
	"zk-rollups/internal/models"
)

func HandleRegisterCallData(callData string) models.CallDataRegister {
	// format callData: "[a,a],[[b,b],[b,b]],[c,c],[d,d,d,d]" - need to convert to big int
	clean := strings.Map(func(r rune) rune {
		if unicode.IsGraphic(r) {
			return r
		}
		return -1
	}, callData)
	fmt.Println(clean)
	split := strings.Split(clean, "],[")
	var tempRes []*big.Int
	for i := 0; i < len(split); i++ {
		split[i] = strings.Trim(split[i], "[]")
		splitL2 := strings.Split(split[i], ",")
		for j := 0; j < len(splitL2); j++ {
			splitL2[j] = strings.Trim(splitL2[j], "\" ")
			splitL2[j] = strings.TrimPrefix(splitL2[j], "0x")
			//fmt.Println("L2:", splitL2[j])
			temp, ok := new(big.Int).SetString(splitL2[j], 16)
			if !ok {
				fmt.Println("error: convert string to big int")
			}
			tempRes = append(tempRes, temp)
		}
	}
	return models.CallDataRegister{
		Pa: [2]*big.Int{
			tempRes[0],
			tempRes[1],
		},
		Pb: [2][2]*big.Int{
			{
				tempRes[2],
				tempRes[3],
			},
			{
				tempRes[4],
				tempRes[5],
			},
		},
		Pc: [2]*big.Int{
			tempRes[6],
			tempRes[7],
		},
		Pub: [4]*big.Int{
			tempRes[8],
			tempRes[9],
			tempRes[10],
			tempRes[11],
		},
	}
}

func HandleExistenceCallData(callData string) models.CallDataExistence {
	// format callData: "[a,a],[[b,b],[b,b]],[c,c],[d,d]" - need to convert to big int
	clean := strings.Map(func(r rune) rune {
		if unicode.IsGraphic(r) {
			return r
		}
		return -1
	}, callData)
	fmt.Println(clean)
	split := strings.Split(clean, "],[")
	var tempRes []*big.Int
	for i := 0; i < len(split); i++ {
		split[i] = strings.Trim(split[i], "[]")
		splitL2 := strings.Split(split[i], ",")
		for j := 0; j < len(splitL2); j++ {
			splitL2[j] = strings.Trim(splitL2[j], "\" ")
			splitL2[j] = strings.TrimPrefix(splitL2[j], "0x")
			//fmt.Println("L2:", splitL2[j])
			temp, ok := new(big.Int).SetString(splitL2[j], 16)
			if !ok {
				fmt.Println("error: convert string to big int")
			}
			tempRes = append(tempRes, temp)
		}
	}
	return models.CallDataExistence{
		Pa: [2]*big.Int{
			tempRes[0],
			tempRes[1],
		},
		Pb: [2][2]*big.Int{
			{
				tempRes[2],
				tempRes[3],
			},
			{
				tempRes[4],
				tempRes[5],
			},
		},
		Pc: [2]*big.Int{
			tempRes[6],
			tempRes[7],
		},
		Pub: [2]*big.Int{
			tempRes[8],
			tempRes[9],
		},
	}
}
