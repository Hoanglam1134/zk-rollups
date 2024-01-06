// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.1
// 	protoc        v3.13.0
// source: api/api.proto

package api

import (
	_ "google.golang.org/genproto/googleapis/api/annotations"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type GetAccountsStatusRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *GetAccountsStatusRequest) Reset() {
	*x = GetAccountsStatusRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_api_api_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetAccountsStatusRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetAccountsStatusRequest) ProtoMessage() {}

func (x *GetAccountsStatusRequest) ProtoReflect() protoreflect.Message {
	mi := &file_api_api_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetAccountsStatusRequest.ProtoReflect.Descriptor instead.
func (*GetAccountsStatusRequest) Descriptor() ([]byte, []int) {
	return file_api_api_proto_rawDescGZIP(), []int{0}
}

func (x *GetAccountsStatusRequest) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type GetAccountsStatusResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Accounts []*GetAccountsStatusResponse_Account `protobuf:"bytes,1,rep,name=accounts,proto3" json:"accounts,omitempty"`
}

func (x *GetAccountsStatusResponse) Reset() {
	*x = GetAccountsStatusResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_api_api_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetAccountsStatusResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetAccountsStatusResponse) ProtoMessage() {}

func (x *GetAccountsStatusResponse) ProtoReflect() protoreflect.Message {
	mi := &file_api_api_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetAccountsStatusResponse.ProtoReflect.Descriptor instead.
func (*GetAccountsStatusResponse) Descriptor() ([]byte, []int) {
	return file_api_api_proto_rawDescGZIP(), []int{1}
}

func (x *GetAccountsStatusResponse) GetAccounts() []*GetAccountsStatusResponse_Account {
	if x != nil {
		return x.Accounts
	}
	return nil
}

type DebugDepositExistenceRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *DebugDepositExistenceRequest) Reset() {
	*x = DebugDepositExistenceRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_api_api_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *DebugDepositExistenceRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*DebugDepositExistenceRequest) ProtoMessage() {}

func (x *DebugDepositExistenceRequest) ProtoReflect() protoreflect.Message {
	mi := &file_api_api_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use DebugDepositExistenceRequest.ProtoReflect.Descriptor instead.
func (*DebugDepositExistenceRequest) Descriptor() ([]byte, []int) {
	return file_api_api_proto_rawDescGZIP(), []int{2}
}

func (x *DebugDepositExistenceRequest) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type DebugDepositExistenceResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Res string `protobuf:"bytes,1,opt,name=res,proto3" json:"res,omitempty"`
}

func (x *DebugDepositExistenceResponse) Reset() {
	*x = DebugDepositExistenceResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_api_api_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *DebugDepositExistenceResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*DebugDepositExistenceResponse) ProtoMessage() {}

func (x *DebugDepositExistenceResponse) ProtoReflect() protoreflect.Message {
	mi := &file_api_api_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use DebugDepositExistenceResponse.ProtoReflect.Descriptor instead.
func (*DebugDepositExistenceResponse) Descriptor() ([]byte, []int) {
	return file_api_api_proto_rawDescGZIP(), []int{3}
}

func (x *DebugDepositExistenceResponse) GetRes() string {
	if x != nil {
		return x.Res
	}
	return ""
}

type DebugTransferLayer2Request struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *DebugTransferLayer2Request) Reset() {
	*x = DebugTransferLayer2Request{}
	if protoimpl.UnsafeEnabled {
		mi := &file_api_api_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *DebugTransferLayer2Request) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*DebugTransferLayer2Request) ProtoMessage() {}

func (x *DebugTransferLayer2Request) ProtoReflect() protoreflect.Message {
	mi := &file_api_api_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use DebugTransferLayer2Request.ProtoReflect.Descriptor instead.
func (*DebugTransferLayer2Request) Descriptor() ([]byte, []int) {
	return file_api_api_proto_rawDescGZIP(), []int{4}
}

func (x *DebugTransferLayer2Request) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type DebugTransferLayer2Response struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Res string `protobuf:"bytes,1,opt,name=res,proto3" json:"res,omitempty"`
}

func (x *DebugTransferLayer2Response) Reset() {
	*x = DebugTransferLayer2Response{}
	if protoimpl.UnsafeEnabled {
		mi := &file_api_api_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *DebugTransferLayer2Response) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*DebugTransferLayer2Response) ProtoMessage() {}

func (x *DebugTransferLayer2Response) ProtoReflect() protoreflect.Message {
	mi := &file_api_api_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use DebugTransferLayer2Response.ProtoReflect.Descriptor instead.
func (*DebugTransferLayer2Response) Descriptor() ([]byte, []int) {
	return file_api_api_proto_rawDescGZIP(), []int{5}
}

func (x *DebugTransferLayer2Response) GetRes() string {
	if x != nil {
		return x.Res
	}
	return ""
}

type GetAccountsStatusResponse_Account struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id        int32  `protobuf:"varint,1,opt,name=id,proto3" json:"id,omitempty"`
	PublicKey string `protobuf:"bytes,2,opt,name=publicKey,proto3" json:"publicKey,omitempty"`
	Balance   string `protobuf:"bytes,3,opt,name=balance,proto3" json:"balance,omitempty"`
}

func (x *GetAccountsStatusResponse_Account) Reset() {
	*x = GetAccountsStatusResponse_Account{}
	if protoimpl.UnsafeEnabled {
		mi := &file_api_api_proto_msgTypes[6]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetAccountsStatusResponse_Account) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetAccountsStatusResponse_Account) ProtoMessage() {}

func (x *GetAccountsStatusResponse_Account) ProtoReflect() protoreflect.Message {
	mi := &file_api_api_proto_msgTypes[6]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetAccountsStatusResponse_Account.ProtoReflect.Descriptor instead.
func (*GetAccountsStatusResponse_Account) Descriptor() ([]byte, []int) {
	return file_api_api_proto_rawDescGZIP(), []int{1, 0}
}

func (x *GetAccountsStatusResponse_Account) GetId() int32 {
	if x != nil {
		return x.Id
	}
	return 0
}

func (x *GetAccountsStatusResponse_Account) GetPublicKey() string {
	if x != nil {
		return x.PublicKey
	}
	return ""
}

func (x *GetAccountsStatusResponse_Account) GetBalance() string {
	if x != nil {
		return x.Balance
	}
	return ""
}

var File_api_api_proto protoreflect.FileDescriptor

var file_api_api_proto_rawDesc = []byte{
	0x0a, 0x0d, 0x61, 0x70, 0x69, 0x2f, 0x61, 0x70, 0x69, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12,
	0x03, 0x61, 0x70, 0x69, 0x1a, 0x1c, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x61, 0x70, 0x69,
	0x2f, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x22, 0x2a, 0x0a, 0x18, 0x47, 0x65, 0x74, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74,
	0x73, 0x53, 0x74, 0x61, 0x74, 0x75, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x0e,
	0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x22, 0xb2,
	0x01, 0x0a, 0x19, 0x47, 0x65, 0x74, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x73, 0x53, 0x74,
	0x61, 0x74, 0x75, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x42, 0x0a, 0x08,
	0x61, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x73, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x26,
	0x2e, 0x61, 0x70, 0x69, 0x2e, 0x47, 0x65, 0x74, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x73,
	0x53, 0x74, 0x61, 0x74, 0x75, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x2e, 0x41,
	0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x52, 0x08, 0x61, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x73,
	0x1a, 0x51, 0x0a, 0x07, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x12, 0x0e, 0x0a, 0x02, 0x69,
	0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05, 0x52, 0x02, 0x69, 0x64, 0x12, 0x1c, 0x0a, 0x09, 0x70,
	0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09,
	0x70, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79, 0x12, 0x18, 0x0a, 0x07, 0x62, 0x61, 0x6c,
	0x61, 0x6e, 0x63, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x62, 0x61, 0x6c, 0x61,
	0x6e, 0x63, 0x65, 0x22, 0x2e, 0x0a, 0x1c, 0x44, 0x65, 0x62, 0x75, 0x67, 0x44, 0x65, 0x70, 0x6f,
	0x73, 0x69, 0x74, 0x45, 0x78, 0x69, 0x73, 0x74, 0x65, 0x6e, 0x63, 0x65, 0x52, 0x65, 0x71, 0x75,
	0x65, 0x73, 0x74, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x02, 0x69, 0x64, 0x22, 0x31, 0x0a, 0x1d, 0x44, 0x65, 0x62, 0x75, 0x67, 0x44, 0x65, 0x70, 0x6f,
	0x73, 0x69, 0x74, 0x45, 0x78, 0x69, 0x73, 0x74, 0x65, 0x6e, 0x63, 0x65, 0x52, 0x65, 0x73, 0x70,
	0x6f, 0x6e, 0x73, 0x65, 0x12, 0x10, 0x0a, 0x03, 0x72, 0x65, 0x73, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x03, 0x72, 0x65, 0x73, 0x22, 0x2c, 0x0a, 0x1a, 0x44, 0x65, 0x62, 0x75, 0x67, 0x54,
	0x72, 0x61, 0x6e, 0x73, 0x66, 0x65, 0x72, 0x4c, 0x61, 0x79, 0x65, 0x72, 0x32, 0x52, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x02, 0x69, 0x64, 0x22, 0x2f, 0x0a, 0x1b, 0x44, 0x65, 0x62, 0x75, 0x67, 0x54, 0x72, 0x61,
	0x6e, 0x73, 0x66, 0x65, 0x72, 0x4c, 0x61, 0x79, 0x65, 0x72, 0x32, 0x52, 0x65, 0x73, 0x70, 0x6f,
	0x6e, 0x73, 0x65, 0x12, 0x10, 0x0a, 0x03, 0x72, 0x65, 0x73, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x03, 0x72, 0x65, 0x73, 0x32, 0xec, 0x02, 0x0a, 0x0f, 0x4c, 0x61, 0x79, 0x65, 0x72, 0x54,
	0x77, 0x6f, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x12, 0x63, 0x0a, 0x11, 0x47, 0x65, 0x74,
	0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x73, 0x53, 0x74, 0x61, 0x74, 0x75, 0x73, 0x12, 0x1d,
	0x2e, 0x61, 0x70, 0x69, 0x2e, 0x47, 0x65, 0x74, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x73,
	0x53, 0x74, 0x61, 0x74, 0x75, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x1e, 0x2e,
	0x61, 0x70, 0x69, 0x2e, 0x47, 0x65, 0x74, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x73, 0x53,
	0x74, 0x61, 0x74, 0x75, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x0f, 0x82,
	0xd3, 0xe4, 0x93, 0x02, 0x09, 0x12, 0x07, 0x2f, 0x73, 0x74, 0x61, 0x74, 0x75, 0x73, 0x12, 0x80,
	0x01, 0x0a, 0x15, 0x44, 0x65, 0x62, 0x75, 0x67, 0x44, 0x65, 0x70, 0x6f, 0x73, 0x69, 0x74, 0x45,
	0x78, 0x69, 0x73, 0x74, 0x65, 0x6e, 0x63, 0x65, 0x12, 0x21, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x44,
	0x65, 0x62, 0x75, 0x67, 0x44, 0x65, 0x70, 0x6f, 0x73, 0x69, 0x74, 0x45, 0x78, 0x69, 0x73, 0x74,
	0x65, 0x6e, 0x63, 0x65, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x22, 0x2e, 0x61, 0x70,
	0x69, 0x2e, 0x44, 0x65, 0x62, 0x75, 0x67, 0x44, 0x65, 0x70, 0x6f, 0x73, 0x69, 0x74, 0x45, 0x78,
	0x69, 0x73, 0x74, 0x65, 0x6e, 0x63, 0x65, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22,
	0x20, 0x82, 0xd3, 0xe4, 0x93, 0x02, 0x1a, 0x12, 0x18, 0x2f, 0x64, 0x65, 0x62, 0x75, 0x67, 0x2f,
	0x64, 0x65, 0x70, 0x6f, 0x73, 0x69, 0x74, 0x2d, 0x65, 0x78, 0x69, 0x73, 0x74, 0x65, 0x6e, 0x63,
	0x65, 0x12, 0x71, 0x0a, 0x13, 0x44, 0x65, 0x62, 0x75, 0x67, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x66,
	0x65, 0x72, 0x4c, 0x61, 0x79, 0x65, 0x72, 0x32, 0x12, 0x1f, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x44,
	0x65, 0x62, 0x75, 0x67, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x66, 0x65, 0x72, 0x4c, 0x61, 0x79, 0x65,
	0x72, 0x32, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x20, 0x2e, 0x61, 0x70, 0x69, 0x2e,
	0x44, 0x65, 0x62, 0x75, 0x67, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x66, 0x65, 0x72, 0x4c, 0x61, 0x79,
	0x65, 0x72, 0x32, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x17, 0x82, 0xd3, 0xe4,
	0x93, 0x02, 0x11, 0x12, 0x0f, 0x2f, 0x64, 0x65, 0x62, 0x75, 0x67, 0x2f, 0x74, 0x72, 0x61, 0x6e,
	0x73, 0x66, 0x65, 0x72, 0x42, 0x10, 0x5a, 0x0e, 0x7a, 0x6b, 0x2d, 0x72, 0x6f, 0x6c, 0x6c, 0x75,
	0x70, 0x73, 0x2f, 0x61, 0x70, 0x69, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_api_api_proto_rawDescOnce sync.Once
	file_api_api_proto_rawDescData = file_api_api_proto_rawDesc
)

func file_api_api_proto_rawDescGZIP() []byte {
	file_api_api_proto_rawDescOnce.Do(func() {
		file_api_api_proto_rawDescData = protoimpl.X.CompressGZIP(file_api_api_proto_rawDescData)
	})
	return file_api_api_proto_rawDescData
}

var file_api_api_proto_msgTypes = make([]protoimpl.MessageInfo, 7)
var file_api_api_proto_goTypes = []interface{}{
	(*GetAccountsStatusRequest)(nil),          // 0: api.GetAccountsStatusRequest
	(*GetAccountsStatusResponse)(nil),         // 1: api.GetAccountsStatusResponse
	(*DebugDepositExistenceRequest)(nil),      // 2: api.DebugDepositExistenceRequest
	(*DebugDepositExistenceResponse)(nil),     // 3: api.DebugDepositExistenceResponse
	(*DebugTransferLayer2Request)(nil),        // 4: api.DebugTransferLayer2Request
	(*DebugTransferLayer2Response)(nil),       // 5: api.DebugTransferLayer2Response
	(*GetAccountsStatusResponse_Account)(nil), // 6: api.GetAccountsStatusResponse.Account
}
var file_api_api_proto_depIdxs = []int32{
	6, // 0: api.GetAccountsStatusResponse.accounts:type_name -> api.GetAccountsStatusResponse.Account
	0, // 1: api.LayerTwoService.GetAccountsStatus:input_type -> api.GetAccountsStatusRequest
	2, // 2: api.LayerTwoService.DebugDepositExistence:input_type -> api.DebugDepositExistenceRequest
	4, // 3: api.LayerTwoService.DebugTransferLayer2:input_type -> api.DebugTransferLayer2Request
	1, // 4: api.LayerTwoService.GetAccountsStatus:output_type -> api.GetAccountsStatusResponse
	3, // 5: api.LayerTwoService.DebugDepositExistence:output_type -> api.DebugDepositExistenceResponse
	5, // 6: api.LayerTwoService.DebugTransferLayer2:output_type -> api.DebugTransferLayer2Response
	4, // [4:7] is the sub-list for method output_type
	1, // [1:4] is the sub-list for method input_type
	1, // [1:1] is the sub-list for extension type_name
	1, // [1:1] is the sub-list for extension extendee
	0, // [0:1] is the sub-list for field type_name
}

func init() { file_api_api_proto_init() }
func file_api_api_proto_init() {
	if File_api_api_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_api_api_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetAccountsStatusRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_api_api_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetAccountsStatusResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_api_api_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*DebugDepositExistenceRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_api_api_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*DebugDepositExistenceResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_api_api_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*DebugTransferLayer2Request); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_api_api_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*DebugTransferLayer2Response); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_api_api_proto_msgTypes[6].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetAccountsStatusResponse_Account); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_api_api_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   7,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_api_api_proto_goTypes,
		DependencyIndexes: file_api_api_proto_depIdxs,
		MessageInfos:      file_api_api_proto_msgTypes,
	}.Build()
	File_api_api_proto = out.File
	file_api_api_proto_rawDesc = nil
	file_api_api_proto_goTypes = nil
	file_api_api_proto_depIdxs = nil
}
