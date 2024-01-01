// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.2.0
// - protoc             v3.13.0
// source: api/api.proto

package api

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.32.0 or later.
const _ = grpc.SupportPackageIsVersion7

// LayerTwoServiceClient is the client API for LayerTwoService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type LayerTwoServiceClient interface {
	// GetAccountStatus
	GetAccountsStatus(ctx context.Context, in *GetAccountsStatusRequest, opts ...grpc.CallOption) (*GetAccountsStatusResponse, error)
	// DebugDepositExistence
	DebugDepositExistence(ctx context.Context, in *DebugDepositExistenceRequest, opts ...grpc.CallOption) (*DebugDepositExistenceResponse, error)
}

type layerTwoServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewLayerTwoServiceClient(cc grpc.ClientConnInterface) LayerTwoServiceClient {
	return &layerTwoServiceClient{cc}
}

func (c *layerTwoServiceClient) GetAccountsStatus(ctx context.Context, in *GetAccountsStatusRequest, opts ...grpc.CallOption) (*GetAccountsStatusResponse, error) {
	out := new(GetAccountsStatusResponse)
	err := c.cc.Invoke(ctx, "/api.LayerTwoService/GetAccountsStatus", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *layerTwoServiceClient) DebugDepositExistence(ctx context.Context, in *DebugDepositExistenceRequest, opts ...grpc.CallOption) (*DebugDepositExistenceResponse, error) {
	out := new(DebugDepositExistenceResponse)
	err := c.cc.Invoke(ctx, "/api.LayerTwoService/DebugDepositExistence", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// LayerTwoServiceServer is the server API for LayerTwoService service.
// All implementations must embed UnimplementedLayerTwoServiceServer
// for forward compatibility
type LayerTwoServiceServer interface {
	// GetAccountStatus
	GetAccountsStatus(context.Context, *GetAccountsStatusRequest) (*GetAccountsStatusResponse, error)
	// DebugDepositExistence
	DebugDepositExistence(context.Context, *DebugDepositExistenceRequest) (*DebugDepositExistenceResponse, error)
	mustEmbedUnimplementedLayerTwoServiceServer()
}

// UnimplementedLayerTwoServiceServer must be embedded to have forward compatible implementations.
type UnimplementedLayerTwoServiceServer struct {
}

func (UnimplementedLayerTwoServiceServer) GetAccountsStatus(context.Context, *GetAccountsStatusRequest) (*GetAccountsStatusResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetAccountsStatus not implemented")
}
func (UnimplementedLayerTwoServiceServer) DebugDepositExistence(context.Context, *DebugDepositExistenceRequest) (*DebugDepositExistenceResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DebugDepositExistence not implemented")
}
func (UnimplementedLayerTwoServiceServer) mustEmbedUnimplementedLayerTwoServiceServer() {}

// UnsafeLayerTwoServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to LayerTwoServiceServer will
// result in compilation errors.
type UnsafeLayerTwoServiceServer interface {
	mustEmbedUnimplementedLayerTwoServiceServer()
}

func RegisterLayerTwoServiceServer(s grpc.ServiceRegistrar, srv LayerTwoServiceServer) {
	s.RegisterService(&LayerTwoService_ServiceDesc, srv)
}

func _LayerTwoService_GetAccountsStatus_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetAccountsStatusRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(LayerTwoServiceServer).GetAccountsStatus(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/api.LayerTwoService/GetAccountsStatus",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(LayerTwoServiceServer).GetAccountsStatus(ctx, req.(*GetAccountsStatusRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _LayerTwoService_DebugDepositExistence_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DebugDepositExistenceRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(LayerTwoServiceServer).DebugDepositExistence(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/api.LayerTwoService/DebugDepositExistence",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(LayerTwoServiceServer).DebugDepositExistence(ctx, req.(*DebugDepositExistenceRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// LayerTwoService_ServiceDesc is the grpc.ServiceDesc for LayerTwoService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var LayerTwoService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "api.LayerTwoService",
	HandlerType: (*LayerTwoServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "GetAccountsStatus",
			Handler:    _LayerTwoService_GetAccountsStatus_Handler,
		},
		{
			MethodName: "DebugDepositExistence",
			Handler:    _LayerTwoService_DebugDepositExistence_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "api/api.proto",
}
