package utils

// ConvertToBytes32 convert []byte to [32]byte
// this function also add padding to the end of []byte if it is not enough
// TODO: need check valid
func ConvertToBytes32(data []byte) [32]byte {
	var src [32]byte
	copy(src[:], append(data, make([]byte, 32-len(data))...))
	return src
}
