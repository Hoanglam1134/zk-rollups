(module(import "runtime" "exceptionHandler" (func $exceptionHandler (type $_t_i32)))
(import "runtime" "printErrorMessage" (func $printErrorMessage (type $_t_void)))
(import "runtime" "writeBufferMessage" (func $writeBufferMessage (type $_t_void)))
(import "runtime" "showSharedRWMemory" (func $showSharedRWMemory (type $_t_void)))
(memory 78)
(type $_sig_i32i32 (func  (param i32 i32)))
(type $_sig_i32 (func  (param i32)))
(type $_sig_i32ri32 (func  (param i32) (result i32)))
(type $_sig_i32i32ri32 (func  (param i32 i32) (result i32)))
(type $_sig_i32i32i32ri32 (func  (param i32 i32 i32) (result i32)))
(type $_sig_i32i32i32 (func  (param i32 i32 i32)))
(type $_sig_i32i64i32 (func  (param i32 i64 i32)))
(type $_sig_i32i64 (func  (param i32 i64)))
(type $_sig_i32i32i32i32 (func  (param i32 i32 i32 i32)))
(type $_sig_i64i64ri64 (func  (param i64 i64) (result i64)))
(type $_sig_i32i32ri64 (func  (param i32 i32) (result i64)))
(type $_t_void (func ))
(type $_t_ri32 (func  (result i32)))
(type $_t_i32 (func  (param i32)))
(type $_t_i32ri32 (func  (param i32) (result i32)))
(type $_t_i64ri32 (func  (param i64) (result i32)))
(type $_t_i32i32 (func  (param i32 i32)))
(type $_t_i32i32ri32 (func  (param i32 i32) (result i32)))
(type $_t_i32i32i32  (func  (param i32 i32 i32)))
(export "memory" (memory 0))
(export "getVersion" (func $getVersion))
(export "getMinorVersion" (func $getMinorVersion))
(export "getPatchVersion" (func $getPatchVersion))
(export "getSharedRWMemoryStart" (func $getSharedRWMemoryStart))
(export "readSharedRWMemory" (func $readSharedRWMemory))
(export "writeSharedRWMemory" (func $writeSharedRWMemory))
(export "init" (func $init))
(export "setInputSignal" (func $setInputSignal))
(export "getInputSignalSize" (func $getInputSignalSize))
(export "getRawPrime" (func $getRawPrime))
(export "getFieldNumLen32" (func $getFieldNumLen32))
(export "getWitnessSize" (func $getWitnessSize))
(export "getInputSize" (func $getInputSize))
(export "getWitness" (func $getWitness))
(export "getMessageChar" (func $getMessageChar))
(func $Fr_int_copy (type $_sig_i32i32)
 (param $px i32)
 (param $pr i32)
get_local $pr
get_local $px
i64.load
i64.store
get_local $pr
get_local $px
i64.load offset=8
i64.store offset=8
get_local $pr
get_local $px
i64.load offset=16
i64.store offset=16
get_local $pr
get_local $px
i64.load offset=24
i64.store offset=24
)
(func $Fr_int_zero (type $_sig_i32)
 (param $pr i32)
get_local $pr
i64.const 0
i64.store
get_local $pr
i64.const 0
i64.store offset=8
get_local $pr
i64.const 0
i64.store offset=16
get_local $pr
i64.const 0
i64.store offset=24
)
(func $Fr_int_isZero (type $_sig_i32ri32)
 (param $px i32)
(result i32)
get_local $px
i64.load offset=24
i64.eqz
if
get_local $px
i64.load offset=16
i64.eqz
if
get_local $px
i64.load offset=8
i64.eqz
if
get_local $px
i64.load
i64.eqz
return
else
i32.const 0
return
end
else
i32.const 0
return
end
else
i32.const 0
return
end
i32.const 0
return
)
(func $Fr_int_one (type $_sig_i32)
 (param $pr i32)
get_local $pr
i64.const 1
i64.store
get_local $pr
i64.const 0
i64.store offset=8
get_local $pr
i64.const 0
i64.store offset=16
get_local $pr
i64.const 0
i64.store offset=24
)
(func $Fr_int_eq (type $_sig_i32i32ri32)
 (param $px i32)
 (param $py i32)
(result i32)
get_local $px
i64.load offset=24
get_local $py
i64.load offset=24
i64.eq
if
get_local $px
i64.load offset=16
get_local $py
i64.load offset=16
i64.eq
if
get_local $px
i64.load offset=8
get_local $py
i64.load offset=8
i64.eq
if
get_local $px
i64.load
get_local $py
i64.load
i64.eq
return
else
i32.const 0
return
end
else
i32.const 0
return
end
else
i32.const 0
return
end
i32.const 0
return
)
(func $Fr_int_gt (type $_sig_i32i32ri32)
 (param $px i32)
 (param $py i32)
(result i32)
get_local $px
i64.load offset=24
get_local $py
i64.load offset=24
i64.lt_u
if
i32.const 0
return
else
get_local $px
i64.load offset=24
get_local $py
i64.load offset=24
i64.gt_u
if
i32.const 1
return
else
get_local $px
i64.load offset=16
get_local $py
i64.load offset=16
i64.lt_u
if
i32.const 0
return
else
get_local $px
i64.load offset=16
get_local $py
i64.load offset=16
i64.gt_u
if
i32.const 1
return
else
get_local $px
i64.load offset=8
get_local $py
i64.load offset=8
i64.lt_u
if
i32.const 0
return
else
get_local $px
i64.load offset=8
get_local $py
i64.load offset=8
i64.gt_u
if
i32.const 1
return
else
get_local $px
i64.load
get_local $py
i64.load
i64.gt_u
return
end
end
end
end
end
end
i32.const 0
return
)
(func $Fr_int_gte (type $_sig_i32i32ri32)
 (param $px i32)
 (param $py i32)
(result i32)
get_local $px
i64.load offset=24
get_local $py
i64.load offset=24
i64.lt_u
if
i32.const 0
return
else
get_local $px
i64.load offset=24
get_local $py
i64.load offset=24
i64.gt_u
if
i32.const 1
return
else
get_local $px
i64.load offset=16
get_local $py
i64.load offset=16
i64.lt_u
if
i32.const 0
return
else
get_local $px
i64.load offset=16
get_local $py
i64.load offset=16
i64.gt_u
if
i32.const 1
return
else
get_local $px
i64.load offset=8
get_local $py
i64.load offset=8
i64.lt_u
if
i32.const 0
return
else
get_local $px
i64.load offset=8
get_local $py
i64.load offset=8
i64.gt_u
if
i32.const 1
return
else
get_local $px
i64.load
get_local $py
i64.load
i64.ge_u
return
end
end
end
end
end
end
i32.const 0
return
)
(func $Fr_int_add (type $_sig_i32i32i32ri32)
 (param $x i32)
 (param $y i32)
 (param $r i32)
(result i32)
 (local $c i64)
get_local $x
i64.load32_u
get_local $y
i64.load32_u
i64.add
set_local $c
get_local $r
get_local $c
i64.store32
get_local $x
i64.load32_u offset=4
get_local $y
i64.load32_u offset=4
i64.add
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $r
get_local $c
i64.store32 offset=4
get_local $x
i64.load32_u offset=8
get_local $y
i64.load32_u offset=8
i64.add
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $r
get_local $c
i64.store32 offset=8
get_local $x
i64.load32_u offset=12
get_local $y
i64.load32_u offset=12
i64.add
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $r
get_local $c
i64.store32 offset=12
get_local $x
i64.load32_u offset=16
get_local $y
i64.load32_u offset=16
i64.add
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $r
get_local $c
i64.store32 offset=16
get_local $x
i64.load32_u offset=20
get_local $y
i64.load32_u offset=20
i64.add
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $r
get_local $c
i64.store32 offset=20
get_local $x
i64.load32_u offset=24
get_local $y
i64.load32_u offset=24
i64.add
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $r
get_local $c
i64.store32 offset=24
get_local $x
i64.load32_u offset=28
get_local $y
i64.load32_u offset=28
i64.add
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $r
get_local $c
i64.store32 offset=28
get_local $c
i64.const 32
i64.shr_u
i32.wrap/i64
)
(func $Fr_int_sub (type $_sig_i32i32i32ri32)
 (param $x i32)
 (param $y i32)
 (param $r i32)
(result i32)
 (local $c i64)
get_local $x
i64.load32_u
get_local $y
i64.load32_u
i64.sub
set_local $c
get_local $r
get_local $c
i64.const 0xFFFFFFFF
i64.and
i64.store32
get_local $x
i64.load32_u offset=4
get_local $y
i64.load32_u offset=4
i64.sub
get_local $c
i64.const 32
i64.shr_s
i64.add
set_local $c
get_local $r
get_local $c
i64.const 0xFFFFFFFF
i64.and
i64.store32 offset=4
get_local $x
i64.load32_u offset=8
get_local $y
i64.load32_u offset=8
i64.sub
get_local $c
i64.const 32
i64.shr_s
i64.add
set_local $c
get_local $r
get_local $c
i64.const 0xFFFFFFFF
i64.and
i64.store32 offset=8
get_local $x
i64.load32_u offset=12
get_local $y
i64.load32_u offset=12
i64.sub
get_local $c
i64.const 32
i64.shr_s
i64.add
set_local $c
get_local $r
get_local $c
i64.const 0xFFFFFFFF
i64.and
i64.store32 offset=12
get_local $x
i64.load32_u offset=16
get_local $y
i64.load32_u offset=16
i64.sub
get_local $c
i64.const 32
i64.shr_s
i64.add
set_local $c
get_local $r
get_local $c
i64.const 0xFFFFFFFF
i64.and
i64.store32 offset=16
get_local $x
i64.load32_u offset=20
get_local $y
i64.load32_u offset=20
i64.sub
get_local $c
i64.const 32
i64.shr_s
i64.add
set_local $c
get_local $r
get_local $c
i64.const 0xFFFFFFFF
i64.and
i64.store32 offset=20
get_local $x
i64.load32_u offset=24
get_local $y
i64.load32_u offset=24
i64.sub
get_local $c
i64.const 32
i64.shr_s
i64.add
set_local $c
get_local $r
get_local $c
i64.const 0xFFFFFFFF
i64.and
i64.store32 offset=24
get_local $x
i64.load32_u offset=28
get_local $y
i64.load32_u offset=28
i64.sub
get_local $c
i64.const 32
i64.shr_s
i64.add
set_local $c
get_local $r
get_local $c
i64.const 0xFFFFFFFF
i64.and
i64.store32 offset=28
get_local $c
i64.const 32
i64.shr_s
i32.wrap/i64
)
(func $Fr_int_mul (type $_sig_i32i32i32)
 (param $x i32)
 (param $y i32)
 (param $r i32)
 (local $c0 i64)
 (local $c1 i64)
 (local $x0 i64)
 (local $y0 i64)
 (local $x1 i64)
 (local $y1 i64)
 (local $x2 i64)
 (local $y2 i64)
 (local $x3 i64)
 (local $y3 i64)
 (local $x4 i64)
 (local $y4 i64)
 (local $x5 i64)
 (local $y5 i64)
 (local $x6 i64)
 (local $y6 i64)
 (local $x7 i64)
 (local $y7 i64)
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u
tee_local $x0
get_local $y
i64.load32_u
tee_local $y0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=4
tee_local $y1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=4
tee_local $x1
get_local $y0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=4
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=8
tee_local $y2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $y1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=8
tee_local $x2
get_local $y0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=8
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=12
tee_local $y3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x1
get_local $y2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x2
get_local $y1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=12
tee_local $x3
get_local $y0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=12
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=16
tee_local $y4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $y3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $y2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $y1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=16
tee_local $x4
get_local $y0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=16
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=20
tee_local $y5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x1
get_local $y4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x2
get_local $y3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x3
get_local $y2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x4
get_local $y1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=20
tee_local $x5
get_local $y0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=20
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=24
tee_local $y6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $y5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $y4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $y3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $y2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $y1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=24
tee_local $x6
get_local $y0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=24
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=28
tee_local $y7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x1
get_local $y6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x2
get_local $y5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x3
get_local $y4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x4
get_local $y3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x5
get_local $y2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x6
get_local $y1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=28
tee_local $x7
get_local $y0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=28
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $y7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $y6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $y5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $y4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $y3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $y2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $y1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=32
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x2
get_local $y7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x3
get_local $y6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x4
get_local $y5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x5
get_local $y4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x6
get_local $y3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x7
get_local $y2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=36
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $y7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $y6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $y5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $y4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $y3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=40
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x4
get_local $y7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x5
get_local $y6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x6
get_local $y5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x7
get_local $y4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=44
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $y7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $y6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $y5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=48
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x6
get_local $y7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x7
get_local $y6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=52
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $y7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=56
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=60
)
(func $Fr_int_square (type $_sig_i32i32)
 (param $x i32)
 (param $r i32)
 (local $c0 i64)
 (local $c1 i64)
 (local $c0_old i64)
 (local $c1_old i64)
 (local $x0 i64)
 (local $x1 i64)
 (local $x2 i64)
 (local $x3 i64)
 (local $x4 i64)
 (local $x5 i64)
 (local $x6 i64)
 (local $x7 i64)
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u
tee_local $x0
get_local $x0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=4
tee_local $x1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=4
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=8
tee_local $x2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=8
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=12
tee_local $x3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=12
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=16
tee_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=16
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=20
tee_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=20
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=24
tee_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=24
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=28
tee_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=28
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=32
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=36
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=40
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=44
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=48
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=52
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=56
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
get_local $r
get_local $c0_old
i64.store32 offset=60
)
(func $Fr_int_squareOld (type $_sig_i32i32)
 (param $x i32)
 (param $r i32)
get_local $x
get_local $x
get_local $r
call $Fr_int_mul
)
(func $Fr_int__mul1 (type $_sig_i32i64i32)
 (param $px i32)
 (param $y i64)
 (param $pr i32)
 (local $c i64)
get_local $px
i64.load32_u align=1
get_local $y
i64.mul
set_local $c
get_local $pr
get_local $c
i64.store32 align=1
get_local $px
i64.load32_u offset=4 align=1
get_local $y
i64.mul
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $pr
get_local $c
i64.store32 offset=4 align=1
get_local $px
i64.load32_u offset=8 align=1
get_local $y
i64.mul
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $pr
get_local $c
i64.store32 offset=8 align=1
get_local $px
i64.load32_u offset=12 align=1
get_local $y
i64.mul
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $pr
get_local $c
i64.store32 offset=12 align=1
get_local $px
i64.load32_u offset=16 align=1
get_local $y
i64.mul
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $pr
get_local $c
i64.store32 offset=16 align=1
get_local $px
i64.load32_u offset=20 align=1
get_local $y
i64.mul
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $pr
get_local $c
i64.store32 offset=20 align=1
get_local $px
i64.load32_u offset=24 align=1
get_local $y
i64.mul
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $pr
get_local $c
i64.store32 offset=24 align=1
get_local $px
i64.load32_u offset=28 align=1
get_local $y
i64.mul
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $pr
get_local $c
i64.store32 offset=28 align=1
)
(func $Fr_int__add1 (type $_sig_i32i64)
 (param $x i32)
 (param $y i64)
 (local $c i64)
 (local $px i32)
get_local $x
set_local $px
get_local $px
i64.load32_u align=1
get_local $y
i64.add
set_local $c
get_local $px
get_local $c
i64.store32 align=1
get_local $c
i64.const 32
i64.shr_u
set_local $c
block
loop
get_local $c
i64.eqz
br_if 1
get_local $px
i32.const 4
i32.add
set_local $px
get_local $px
i64.load32_u align=1
get_local $c
i64.add
set_local $c
get_local $px
get_local $c
i64.store32 align=1
get_local $c
i64.const 32
i64.shr_u
set_local $c
br 0
end
end
)
(func $Fr_int_div (type $_sig_i32i32i32i32)
 (param $x i32)
 (param $y i32)
 (param $c i32)
 (param $r i32)
 (local $rr i32)
 (local $cc i32)
 (local $eX i32)
 (local $eY i32)
 (local $sy i64)
 (local $sx i64)
 (local $ec i32)
get_local $c
if
get_local $c
set_local $cc
else
i32.const 192
set_local $cc
end
get_local $r
if
get_local $r
set_local $rr
else
i32.const 224
set_local $rr
end
get_local $x
get_local $rr
call $Fr_int_copy
get_local $y
i32.const 160
call $Fr_int_copy
get_local $cc
call $Fr_int_zero
i32.const 256
call $Fr_int_zero
i32.const 31
set_local $eX
i32.const 31
set_local $eY
block
loop
i32.const 160
get_local $eY
i32.add
i32.load8_u
get_local $eY
i32.const 3
i32.eq
i32.or
br_if 1
get_local $eY
i32.const 1
i32.sub
set_local $eY
br 0
end
end
i32.const 160
get_local $eY
i32.add
i32.const 3
i32.sub
i64.load32_u align=1
i64.const 1
i64.add
set_local $sy
get_local $sy
i64.const 1
i64.eq
if
i64.const 0
i64.const 0
i64.div_u
drop
end
block
loop
block
loop
get_local $rr
get_local $eX
i32.add
i32.load8_u
get_local $eX
i32.const 7
i32.eq
i32.or
br_if 1
get_local $eX
i32.const 1
i32.sub
set_local $eX
br 0
end
end
get_local $rr
get_local $eX
i32.add
i32.const 7
i32.sub
i64.load align=1
set_local $sx
get_local $sx
get_local $sy
i64.div_u
set_local $sx
get_local $eX
get_local $eY
i32.sub
i32.const 4
i32.sub
set_local $ec
block
loop
get_local $sx
i64.const 0xFFFFFFFF00000000
i64.and
i64.eqz
get_local $ec
i32.const 0
i32.ge_s
i32.and
br_if 1
get_local $sx
i64.const 8
i64.shr_u
set_local $sx
get_local $ec
i32.const 1
i32.add
set_local $ec
br 0
end
end
get_local $sx
i64.eqz
if
get_local $rr
i32.const 160
call $Fr_int_gte
i32.eqz
br_if 2
i64.const 1
set_local $sx
i32.const 0
set_local $ec
end
i32.const 160
get_local $sx
i32.const 288
call $Fr_int__mul1
get_local $rr
i32.const 288
get_local $ec
i32.sub
get_local $rr
call $Fr_int_sub
drop
get_local $cc
get_local $ec
i32.add
get_local $sx
call $Fr_int__add1
br 0
end
end
)
(func $Fr_int_inverseMod (type $_sig_i32i32i32)
 (param $px i32)
 (param $pm i32)
 (param $pr i32)
 (local $t i32)
 (local $newt i32)
 (local $r i32)
 (local $qq i32)
 (local $qr i32)
 (local $newr i32)
 (local $swp i32)
 (local $x i32)
 (local $signt i32)
 (local $signnewt i32)
 (local $signx i32)
i32.const 320
set_local $t
i32.const 320
call $Fr_int_zero
i32.const 0
set_local $signt
i32.const 352
set_local $r
get_local $pm
i32.const 352
call $Fr_int_copy
i32.const 384
set_local $newt
i32.const 384
call $Fr_int_one
i32.const 0
set_local $signnewt
i32.const 416
set_local $newr
get_local $px
i32.const 416
call $Fr_int_copy
i32.const 448
set_local $qq
i32.const 480
set_local $qr
i32.const 576
set_local $x
block
loop
get_local $newr
call $Fr_int_isZero
br_if 1
get_local $r
get_local $newr
get_local $qq
get_local $qr
call $Fr_int_div
get_local $qq
get_local $newt
i32.const 512
call $Fr_int_mul
get_local $signt
if
get_local $signnewt
if
i32.const 512
get_local $t
call $Fr_int_gte
if
i32.const 512
get_local $t
get_local $x
call $Fr_int_sub
drop
i32.const 0
set_local $signx
else
get_local $t
i32.const 512
get_local $x
call $Fr_int_sub
drop
i32.const 1
set_local $signx
end
else
i32.const 512
get_local $t
get_local $x
call $Fr_int_add
drop
i32.const 1
set_local $signx
end
else
get_local $signnewt
if
i32.const 512
get_local $t
get_local $x
call $Fr_int_add
drop
i32.const 0
set_local $signx
else
get_local $t
i32.const 512
call $Fr_int_gte
if
get_local $t
i32.const 512
get_local $x
call $Fr_int_sub
drop
i32.const 0
set_local $signx
else
i32.const 512
get_local $t
get_local $x
call $Fr_int_sub
drop
i32.const 1
set_local $signx
end
end
end
get_local $t
set_local $swp
get_local $newt
set_local $t
get_local $x
set_local $newt
get_local $swp
set_local $x
get_local $signnewt
set_local $signt
get_local $signx
set_local $signnewt
get_local $r
set_local $swp
get_local $newr
set_local $r
get_local $qr
set_local $newr
get_local $swp
set_local $qr
br 0
end
end
get_local $signt
if
get_local $pm
get_local $t
get_local $pr
call $Fr_int_sub
drop
else
get_local $t
get_local $pr
call $Fr_int_copy
end
)
(func $Fr_F1m_add (type $_sig_i32i32i32)
 (param $x i32)
 (param $y i32)
 (param $r i32)
get_local $x
get_local $y
get_local $r
call $Fr_int_add
if
get_local $r
i32.const 608
get_local $r
call $Fr_int_sub
drop
else
get_local $r
i32.const 608
call $Fr_int_gte
if
get_local $r
i32.const 608
get_local $r
call $Fr_int_sub
drop
end
end
)
(func $Fr_F1m_sub (type $_sig_i32i32i32)
 (param $x i32)
 (param $y i32)
 (param $r i32)
get_local $x
get_local $y
get_local $r
call $Fr_int_sub
if
get_local $r
i32.const 608
get_local $r
call $Fr_int_add
drop
end
)
(func $Fr_F1m_neg (type $_sig_i32i32)
 (param $x i32)
 (param $r i32)
i32.const 768
get_local $x
get_local $r
call $Fr_F1m_sub
)
(func $Fr_F1m_mReduct (type $_sig_i32i32)
 (param $t i32)
 (param $r i32)
 (local $np32 i64)
 (local $c i64)
 (local $m i64)
i64.const 4026531839
set_local $np32
i64.const 0
set_local $c
get_local $t
i64.load32_u
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m
get_local $t
i64.load32_u
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32
get_local $t
i64.load32_u offset=4
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=4
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=4
get_local $t
i64.load32_u offset=8
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=8
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=8
get_local $t
i64.load32_u offset=12
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=12
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=12
get_local $t
i64.load32_u offset=16
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=16
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=16
get_local $t
i64.load32_u offset=20
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=20
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=20
get_local $t
i64.load32_u offset=24
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=24
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=24
get_local $t
i64.load32_u offset=28
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=28
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=28
i32.const 992
get_local $c
i64.const 32
i64.shr_u
i64.store32
i64.const 0
set_local $c
get_local $t
i64.load32_u offset=4
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m
get_local $t
i64.load32_u offset=4
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=4
get_local $t
i64.load32_u offset=8
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=4
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=8
get_local $t
i64.load32_u offset=12
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=8
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=12
get_local $t
i64.load32_u offset=16
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=12
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=16
get_local $t
i64.load32_u offset=20
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=16
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=20
get_local $t
i64.load32_u offset=24
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=20
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=24
get_local $t
i64.load32_u offset=28
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=24
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=28
get_local $t
i64.load32_u offset=32
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=28
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=32
i32.const 992
get_local $c
i64.const 32
i64.shr_u
i64.store32 offset=4
i64.const 0
set_local $c
get_local $t
i64.load32_u offset=8
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m
get_local $t
i64.load32_u offset=8
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=8
get_local $t
i64.load32_u offset=12
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=4
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=12
get_local $t
i64.load32_u offset=16
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=8
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=16
get_local $t
i64.load32_u offset=20
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=12
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=20
get_local $t
i64.load32_u offset=24
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=16
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=24
get_local $t
i64.load32_u offset=28
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=20
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=28
get_local $t
i64.load32_u offset=32
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=24
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=32
get_local $t
i64.load32_u offset=36
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=28
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=36
i32.const 992
get_local $c
i64.const 32
i64.shr_u
i64.store32 offset=8
i64.const 0
set_local $c
get_local $t
i64.load32_u offset=12
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m
get_local $t
i64.load32_u offset=12
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=12
get_local $t
i64.load32_u offset=16
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=4
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=16
get_local $t
i64.load32_u offset=20
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=8
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=20
get_local $t
i64.load32_u offset=24
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=12
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=24
get_local $t
i64.load32_u offset=28
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=16
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=28
get_local $t
i64.load32_u offset=32
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=20
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=32
get_local $t
i64.load32_u offset=36
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=24
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=36
get_local $t
i64.load32_u offset=40
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=28
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=40
i32.const 992
get_local $c
i64.const 32
i64.shr_u
i64.store32 offset=12
i64.const 0
set_local $c
get_local $t
i64.load32_u offset=16
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m
get_local $t
i64.load32_u offset=16
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=16
get_local $t
i64.load32_u offset=20
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=4
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=20
get_local $t
i64.load32_u offset=24
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=8
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=24
get_local $t
i64.load32_u offset=28
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=12
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=28
get_local $t
i64.load32_u offset=32
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=16
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=32
get_local $t
i64.load32_u offset=36
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=20
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=36
get_local $t
i64.load32_u offset=40
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=24
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=40
get_local $t
i64.load32_u offset=44
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=28
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=44
i32.const 992
get_local $c
i64.const 32
i64.shr_u
i64.store32 offset=16
i64.const 0
set_local $c
get_local $t
i64.load32_u offset=20
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m
get_local $t
i64.load32_u offset=20
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=20
get_local $t
i64.load32_u offset=24
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=4
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=24
get_local $t
i64.load32_u offset=28
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=8
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=28
get_local $t
i64.load32_u offset=32
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=12
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=32
get_local $t
i64.load32_u offset=36
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=16
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=36
get_local $t
i64.load32_u offset=40
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=20
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=40
get_local $t
i64.load32_u offset=44
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=24
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=44
get_local $t
i64.load32_u offset=48
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=28
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=48
i32.const 992
get_local $c
i64.const 32
i64.shr_u
i64.store32 offset=20
i64.const 0
set_local $c
get_local $t
i64.load32_u offset=24
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m
get_local $t
i64.load32_u offset=24
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=24
get_local $t
i64.load32_u offset=28
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=4
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=28
get_local $t
i64.load32_u offset=32
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=8
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=32
get_local $t
i64.load32_u offset=36
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=12
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=36
get_local $t
i64.load32_u offset=40
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=16
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=40
get_local $t
i64.load32_u offset=44
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=20
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=44
get_local $t
i64.load32_u offset=48
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=24
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=48
get_local $t
i64.load32_u offset=52
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=28
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=52
i32.const 992
get_local $c
i64.const 32
i64.shr_u
i64.store32 offset=24
i64.const 0
set_local $c
get_local $t
i64.load32_u offset=28
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m
get_local $t
i64.load32_u offset=28
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=28
get_local $t
i64.load32_u offset=32
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=4
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=32
get_local $t
i64.load32_u offset=36
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=8
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=36
get_local $t
i64.load32_u offset=40
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=12
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=40
get_local $t
i64.load32_u offset=44
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=16
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=44
get_local $t
i64.load32_u offset=48
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=20
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=48
get_local $t
i64.load32_u offset=52
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=24
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=52
get_local $t
i64.load32_u offset=56
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=28
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=56
i32.const 992
get_local $c
i64.const 32
i64.shr_u
i64.store32 offset=28
i32.const 992
get_local $t
i32.const 32
i32.add
get_local $r
call $Fr_F1m_add
)
(func $Fr_F1m_mul (type $_sig_i32i32i32)
 (param $x i32)
 (param $y i32)
 (param $r i32)
 (local $c0 i64)
 (local $c1 i64)
 (local $np32 i64)
 (local $x0 i64)
 (local $y0 i64)
 (local $m0 i64)
 (local $q0 i64)
 (local $x1 i64)
 (local $y1 i64)
 (local $m1 i64)
 (local $q1 i64)
 (local $x2 i64)
 (local $y2 i64)
 (local $m2 i64)
 (local $q2 i64)
 (local $x3 i64)
 (local $y3 i64)
 (local $m3 i64)
 (local $q3 i64)
 (local $x4 i64)
 (local $y4 i64)
 (local $m4 i64)
 (local $q4 i64)
 (local $x5 i64)
 (local $y5 i64)
 (local $m5 i64)
 (local $q5 i64)
 (local $x6 i64)
 (local $y6 i64)
 (local $m6 i64)
 (local $q6 i64)
 (local $x7 i64)
 (local $y7 i64)
 (local $m7 i64)
 (local $q7 i64)
i64.const 4026531839
set_local $np32
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u
tee_local $x0
get_local $y
i64.load32_u
tee_local $y0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m0
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=608
tee_local $q0
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=4
tee_local $y1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=4
tee_local $x1
get_local $y0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=612
tee_local $q1
get_local $m0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m1
get_local $c1
i64.const 4294967295
i64.and
get_local $q0
get_local $m1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=8
tee_local $y2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $y1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=8
tee_local $x2
get_local $y0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=616
tee_local $q2
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m2
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=12
tee_local $y3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x1
get_local $y2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x2
get_local $y1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=12
tee_local $x3
get_local $y0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q1
get_local $m2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q2
get_local $m1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=620
tee_local $q3
get_local $m0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m3
get_local $c1
i64.const 4294967295
i64.and
get_local $q0
get_local $m3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=16
tee_local $y4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $y3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $y2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $y1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=16
tee_local $x4
get_local $y0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=624
tee_local $q4
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m4
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=20
tee_local $y5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x1
get_local $y4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x2
get_local $y3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x3
get_local $y2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x4
get_local $y1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=20
tee_local $x5
get_local $y0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q1
get_local $m4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q2
get_local $m3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q3
get_local $m2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q4
get_local $m1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=628
tee_local $q5
get_local $m0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m5
get_local $c1
i64.const 4294967295
i64.and
get_local $q0
get_local $m5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=24
tee_local $y6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $y5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $y4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $y3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $y2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $y1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=24
tee_local $x6
get_local $y0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=632
tee_local $q6
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m6
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=28
tee_local $y7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x1
get_local $y6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x2
get_local $y5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x3
get_local $y4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x4
get_local $y3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x5
get_local $y2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x6
get_local $y1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=28
tee_local $x7
get_local $y0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q1
get_local $m6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q2
get_local $m5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q3
get_local $m4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q4
get_local $m3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q5
get_local $m2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q6
get_local $m1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=636
tee_local $q7
get_local $m0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m7
get_local $c1
i64.const 4294967295
i64.and
get_local $q0
get_local $m7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $y7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $y6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $y5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $y4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $y3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $y2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $y1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x2
get_local $y7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x3
get_local $y6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x4
get_local $y5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x5
get_local $y4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x6
get_local $y3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x7
get_local $y2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q2
get_local $m7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q3
get_local $m6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q4
get_local $m5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q5
get_local $m4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q6
get_local $m3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q7
get_local $m2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=4
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $y7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $y6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $y5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $y4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $y3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=8
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x4
get_local $y7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x5
get_local $y6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x6
get_local $y5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x7
get_local $y4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q4
get_local $m7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q5
get_local $m6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q6
get_local $m5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q7
get_local $m4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=12
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $y7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $y6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $y5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=16
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x6
get_local $y7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x7
get_local $y6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q6
get_local $m7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q7
get_local $m6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=20
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $y7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=24
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=28
get_local $c0
i32.wrap/i64
if
get_local $r
i32.const 608
get_local $r
call $Fr_int_sub
drop
else
get_local $r
i32.const 608
call $Fr_int_gte
if
get_local $r
i32.const 608
get_local $r
call $Fr_int_sub
drop
end
end
)
(func $Fr_F1m_square (type $_sig_i32i32)
 (param $x i32)
 (param $r i32)
 (local $c0 i64)
 (local $c1 i64)
 (local $c0_old i64)
 (local $c1_old i64)
 (local $np32 i64)
 (local $x0 i64)
 (local $m0 i64)
 (local $q0 i64)
 (local $x1 i64)
 (local $m1 i64)
 (local $q1 i64)
 (local $x2 i64)
 (local $m2 i64)
 (local $q2 i64)
 (local $x3 i64)
 (local $m3 i64)
 (local $q3 i64)
 (local $x4 i64)
 (local $m4 i64)
 (local $q4 i64)
 (local $x5 i64)
 (local $m5 i64)
 (local $q5 i64)
 (local $x6 i64)
 (local $m6 i64)
 (local $q6 i64)
 (local $x7 i64)
 (local $m7 i64)
 (local $q7 i64)
i64.const 4026531839
set_local $np32
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u
tee_local $x0
get_local $x0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m0
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=608
tee_local $q0
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=4
tee_local $x1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=612
tee_local $q1
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m1
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=8
tee_local $x2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=616
tee_local $q2
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m2
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=12
tee_local $x3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=620
tee_local $q3
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m3
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=16
tee_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=624
tee_local $q4
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m4
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=20
tee_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=628
tee_local $q5
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m5
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=24
tee_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=632
tee_local $q6
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m6
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=28
tee_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=636
tee_local $q7
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m7
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=4
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=8
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=12
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=16
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=20
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=24
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
get_local $r
get_local $c0_old
i64.store32 offset=28
get_local $c1_old
i32.wrap/i64
if
get_local $r
i32.const 608
get_local $r
call $Fr_int_sub
drop
else
get_local $r
i32.const 608
call $Fr_int_gte
if
get_local $r
i32.const 608
get_local $r
call $Fr_int_sub
drop
end
end
)
(func $Fr_F1m_squareOld (type $_sig_i32i32)
 (param $x i32)
 (param $r i32)
get_local $x
get_local $x
get_local $r
call $Fr_F1m_mul
)
(func $Fr_F1m_toMontgomery (type $_sig_i32i32)
 (param $x i32)
 (param $r i32)
get_local $x
i32.const 672
get_local $r
call $Fr_F1m_mul
)
(func $Fr_F1m_fromMontgomery (type $_sig_i32i32)
 (param $x i32)
 (param $r i32)
get_local $x
i32.const 1504
call $Fr_int_copy
i32.const 1536
call $Fr_int_zero
i32.const 1504
get_local $r
call $Fr_F1m_mReduct
)
(func $Fr_F1m_isNegative (type $_sig_i32ri32)
 (param $x i32)
(result i32)
get_local $x
i32.const 1568
call $Fr_F1m_fromMontgomery
i32.const 1568
i32.load
i32.const 1
i32.and
)
(func $Fr_F1m_inverse (type $_sig_i32i32)
 (param $x i32)
 (param $r i32)
get_local $x
get_local $r
call $Fr_F1m_fromMontgomery
get_local $r
i32.const 608
get_local $r
call $Fr_int_inverseMod
get_local $r
get_local $r
call $Fr_F1m_toMontgomery
)
(func $Fr_F1m_one (type $_sig_i32)
 (param $pr i32)
i32.const 736
get_local $pr
call $Fr_int_copy
)
(func $Fr_F1m_load (type $_sig_i32i32i32)
 (param $scalar i32)
 (param $scalarLen i32)
 (param $r i32)
 (local $p i32)
 (local $l i32)
 (local $i i32)
 (local $j i32)
get_local $r
call $Fr_int_zero
i32.const 32
set_local $i
get_local $scalar
set_local $p
block
loop
get_local $i
get_local $scalarLen
i32.gt_u
br_if 1
get_local $i
i32.const 32
i32.eq
if
i32.const 1600
call $Fr_F1m_one
else
i32.const 1600
i32.const 672
i32.const 1600
call $Fr_F1m_mul
end
get_local $p
i32.const 1600
i32.const 1632
call $Fr_F1m_mul
get_local $r
i32.const 1632
get_local $r
call $Fr_F1m_add
get_local $p
i32.const 32
i32.add
set_local $p
get_local $i
i32.const 32
i32.add
set_local $i
br 0
end
end
get_local $scalarLen
i32.const 32
i32.rem_u
set_local $l
get_local $l
i32.eqz
if
return
end
i32.const 1632
call $Fr_int_zero
i32.const 0
set_local $j
block
loop
get_local $j
get_local $l
i32.eq
br_if 1
get_local $j
get_local $p
i32.load8_u
i32.store8 offset=1632
get_local $p
i32.const 1
i32.add
set_local $p
get_local $j
i32.const 1
i32.add
set_local $j
br 0
end
end
get_local $i
i32.const 32
i32.eq
if
i32.const 1600
call $Fr_F1m_one
else
i32.const 1600
i32.const 672
i32.const 1600
call $Fr_F1m_mul
end
i32.const 1632
i32.const 1600
i32.const 1632
call $Fr_F1m_mul
get_local $r
i32.const 1632
get_local $r
call $Fr_F1m_add
)
(func $Fr_F1m_timesScalar (type $_sig_i32i32i32i32)
 (param $x i32)
 (param $scalar i32)
 (param $scalarLen i32)
 (param $r i32)
get_local $scalar
get_local $scalarLen
i32.const 1664
call $Fr_F1m_load
i32.const 1664
i32.const 1664
call $Fr_F1m_toMontgomery
get_local $x
i32.const 1664
get_local $r
call $Fr_F1m_mul
)
(func $Fr_F1m_exp (type $_sig_i32i32i32i32)
 (param $base i32)
 (param $scalar i32)
 (param $scalarLength i32)
 (param $r i32)
 (local $i i32)
 (local $b i32)
get_local $base
i32.const 1696
call $Fr_int_copy
get_local $r
call $Fr_F1m_one
get_local $scalarLength
set_local $i
block
loop
get_local $i
i32.const 1
i32.sub
set_local $i
get_local $scalar
get_local $i
i32.add
i32.load8_u
set_local $b
get_local $r
get_local $r
call $Fr_F1m_square
get_local $b
i32.const 128
i32.ge_u
if
get_local $b
i32.const 128
i32.sub
set_local $b
i32.const 1696
get_local $r
get_local $r
call $Fr_F1m_mul
end
get_local $r
get_local $r
call $Fr_F1m_square
get_local $b
i32.const 64
i32.ge_u
if
get_local $b
i32.const 64
i32.sub
set_local $b
i32.const 1696
get_local $r
get_local $r
call $Fr_F1m_mul
end
get_local $r
get_local $r
call $Fr_F1m_square
get_local $b
i32.const 32
i32.ge_u
if
get_local $b
i32.const 32
i32.sub
set_local $b
i32.const 1696
get_local $r
get_local $r
call $Fr_F1m_mul
end
get_local $r
get_local $r
call $Fr_F1m_square
get_local $b
i32.const 16
i32.ge_u
if
get_local $b
i32.const 16
i32.sub
set_local $b
i32.const 1696
get_local $r
get_local $r
call $Fr_F1m_mul
end
get_local $r
get_local $r
call $Fr_F1m_square
get_local $b
i32.const 8
i32.ge_u
if
get_local $b
i32.const 8
i32.sub
set_local $b
i32.const 1696
get_local $r
get_local $r
call $Fr_F1m_mul
end
get_local $r
get_local $r
call $Fr_F1m_square
get_local $b
i32.const 4
i32.ge_u
if
get_local $b
i32.const 4
i32.sub
set_local $b
i32.const 1696
get_local $r
get_local $r
call $Fr_F1m_mul
end
get_local $r
get_local $r
call $Fr_F1m_square
get_local $b
i32.const 2
i32.ge_u
if
get_local $b
i32.const 2
i32.sub
set_local $b
i32.const 1696
get_local $r
get_local $r
call $Fr_F1m_mul
end
get_local $r
get_local $r
call $Fr_F1m_square
get_local $b
i32.const 1
i32.ge_u
if
get_local $b
i32.const 1
i32.sub
set_local $b
i32.const 1696
get_local $r
get_local $r
call $Fr_F1m_mul
end
get_local $i
i32.eqz
br_if 1
br 0
end
end
)
(func $Fr_F1m_sqrt (type $_sig_i32i32)
 (param $n i32)
 (param $r i32)
 (local $m i32)
 (local $i i32)
 (local $j i32)
get_local $n
call $Fr_int_isZero
if
get_local $r
call $Fr_int_zero
return
end
i32.const 28
set_local $m
i32.const 928
i32.const 1728
call $Fr_int_copy
get_local $n
i32.const 896
i32.const 32
i32.const 1760
call $Fr_F1m_exp
get_local $n
i32.const 960
i32.const 32
i32.const 1792
call $Fr_F1m_exp
block
loop
i32.const 1760
i32.const 736
call $Fr_int_eq
br_if 1
i32.const 1760
i32.const 1824
call $Fr_F1m_square
i32.const 1
set_local $i
block
loop
i32.const 1824
i32.const 736
call $Fr_int_eq
br_if 1
i32.const 1824
i32.const 1824
call $Fr_F1m_square
get_local $i
i32.const 1
i32.add
set_local $i
br 0
end
end
i32.const 1728
i32.const 1856
call $Fr_int_copy
get_local $m
get_local $i
i32.sub
i32.const 1
i32.sub
set_local $j
block
loop
get_local $j
i32.eqz
br_if 1
i32.const 1856
i32.const 1856
call $Fr_F1m_square
get_local $j
i32.const 1
i32.sub
set_local $j
br 0
end
end
get_local $i
set_local $m
i32.const 1856
i32.const 1728
call $Fr_F1m_square
i32.const 1760
i32.const 1728
i32.const 1760
call $Fr_F1m_mul
i32.const 1792
i32.const 1856
i32.const 1792
call $Fr_F1m_mul
br 0
end
end
i32.const 1792
call $Fr_F1m_isNegative
if
i32.const 1792
get_local $r
call $Fr_F1m_neg
else
i32.const 1792
get_local $r
call $Fr_int_copy
end
)
(func $Fr_F1m_isSquare (type $_sig_i32ri32)
 (param $n i32)
(result i32)
get_local $n
call $Fr_int_isZero
if
i32.const 1
return
end
get_local $n
i32.const 800
i32.const 32
i32.const 1888
call $Fr_F1m_exp
i32.const 1888
i32.const 736
call $Fr_int_eq
)
(func $Fr_copy (type $_sig_i32i32)
 (param $pr i32)
 (param $px i32)
get_local $pr
get_local $px
i64.load
i64.store
get_local $pr
get_local $px
i64.load offset=8
i64.store offset=8
get_local $pr
get_local $px
i64.load offset=16
i64.store offset=16
get_local $pr
get_local $px
i64.load offset=24
i64.store offset=24
get_local $pr
get_local $px
i64.load offset=32
i64.store offset=32
)
(func $Fr_copyn (type $_sig_i32i32i32)
 (param $pr i32)
 (param $px i32)
 (param $n i32)
 (local $s i32)
 (local $d i32)
 (local $slast i32)
get_local $px
set_local $s
get_local $pr
set_local $d
get_local $s
get_local $n
i32.const 40
i32.mul
i32.add
set_local $slast
block
loop
get_local $s
get_local $slast
i32.eq
br_if 1
get_local $d
get_local $s
i64.load
i64.store
get_local $d
i32.const 8
i32.add
set_local $d
get_local $s
i32.const 8
i32.add
set_local $s
br 0
end
end
)
(func $Fr_isTrue (type $_sig_i32ri32)
 (param $px i32)
(result i32)
get_local $px
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $px
i32.const 8
i32.add
call $Fr_int_isZero ;; it was $Fr_F1m_isZero, but it does not exists
i32.eqz
return
end
get_local $px
i32.load
i32.const 0
i32.ne
)
(func $Fr_rawCopyS2L (type $_sig_i32i64)
 (param $pR i32)
 (param $v i64)
get_local $v
i64.const 0
i64.gt_s
if
get_local $pR
get_local $v
i64.store
get_local $pR
i64.const 0
i64.store offset=8
get_local $pR
i64.const 0
i64.store offset=16
get_local $pR
i64.const 0
i64.store offset=24
else
i64.const 0
get_local $v
i64.sub
set_local $v
get_local $pR
get_local $v
i64.store
get_local $pR
i64.const 0
i64.store offset=8
get_local $pR
i64.const 0
i64.store offset=16
get_local $pR
i64.const 0
i64.store offset=24
get_local $pR
get_local $pR
call $Fr_F1m_neg
end
)
(func $Fr_toMontgomery (type $_sig_i32)
 (param $pR i32)
get_local $pR
i32.load8_u offset=7
i32.const 64
i32.and
if
return
else
get_local $pR
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pR
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_toMontgomery
else
get_local $pR
i32.const 8
i32.add
get_local $pR
i64.load32_s
call $Fr_rawCopyS2L
get_local $pR
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_toMontgomery
get_local $pR
i32.const 1073741824
i32.store offset=4
end
end
)
(func $Fr_toNormal (type $_sig_i32)
 (param $pR i32)
get_local $pR
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pR
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_fromMontgomery
end
end
)
(func $Fr_toLongNormal (type $_sig_i32)
 (param $pR i32)
get_local $pR
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pR
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_fromMontgomery
end
else
get_local $pR
i32.const 8
i32.add
get_local $pR
i64.load32_s
call $Fr_rawCopyS2L
get_local $pR
i32.const -2147483648
i32.store offset=4
end
)
(func $Fr_isNegative (type $_sig_i32ri32)
 (param $pA i32)
(result i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
i32.const 1920
call $Fr_int_gt
return
end
get_local $pA
i32.load
i32.const 0
i32.lt_s
)
(func $Fr_neg (type $_sig_i32i32)
 (param $pR i32)
 (param $pA i32)
 (local $r i64)
 (local $overflow i64)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pR
i32.const -1073741824
i32.store offset=4
else
get_local $pR
i32.const -2147483648
i32.store offset=4
end
get_local $pA
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_neg
else
i64.const 0
get_local $pA
i64.load32_s
i64.sub
set_local $r
get_local $r
i64.const 31
i64.shr_s
set_local $overflow
get_local $overflow
i64.eqz
get_local $overflow
i64.const 1
i64.add
i64.eqz
i32.or
if
get_local $pR
get_local $r
i64.store32
get_local $pR
i32.const 0
i32.store offset=4
else
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
i32.const 8
i32.add
get_local $r
call $Fr_rawCopyS2L
end
end
)
(func $Fr_getLsb32 (type $_sig_i32ri32)
 (param $pA i32)
(result i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
call $Fr_toNormal
get_local $pA
i32.load offset=8
return
else
get_local $pA
i32.load
return
end
i32.const 0
)
(func $Fr_toInt (type $_sig_i32ri32)
 (param $pA i32)
(result i32)
get_local $pA
call $Fr_isNegative
if
i32.const 8
get_local $pA
call $Fr_neg
i32.const 0
i32.const 8
call $Fr_getLsb32
i32.sub
return
else
get_local $pA
call $Fr_getLsb32
return
end
i32.const 0
)
(func $Fr_add (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
 (local $r i64)
 (local $overflow i64)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_add
else
get_local $pB
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_add
end
else
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pA
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_add
else
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_add
end
end
else
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_add
else
get_local $pR
i32.const -2147483648
i32.store offset=4
i32.const 16
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const 8
i32.add
i32.const 16
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_add
end
end
else
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pA
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_add
else
get_local $pR
i32.const -2147483648
i32.store offset=4
i32.const 16
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
i32.const 16
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_add
end
else
get_local $pA
i64.load32_s
get_local $pB
i64.load32_s
i64.add
set_local $r
get_local $r
i64.const 31
i64.shr_s
set_local $overflow
get_local $overflow
i64.eqz
get_local $overflow
i64.const 1
i64.add
i64.eqz
i32.or
if
get_local $pR
get_local $r
i64.store32
get_local $pR
i32.const 0
i32.store offset=4
else
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
i32.const 8
i32.add
get_local $r
call $Fr_rawCopyS2L
end
end
end
)
(func $Fr_sub (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
 (local $r i64)
 (local $overflow i64)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_sub
else
get_local $pB
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_sub
end
else
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pA
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_sub
else
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_sub
end
end
else
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_sub
else
get_local $pR
i32.const -2147483648
i32.store offset=4
i32.const 16
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const 8
i32.add
i32.const 16
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_sub
end
end
else
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pA
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_sub
else
get_local $pR
i32.const -2147483648
i32.store offset=4
i32.const 16
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
i32.const 16
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_sub
end
else
get_local $pA
i64.load32_s
get_local $pB
i64.load32_s
i64.sub
set_local $r
get_local $r
i64.const 31
i64.shr_s
set_local $overflow
get_local $overflow
i64.eqz
get_local $overflow
i64.const 1
i64.add
i64.eqz
i32.or
if
get_local $pR
get_local $r
i64.store32
get_local $pR
i32.const 0
i32.store offset=4
else
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
i32.const 8
i32.add
get_local $r
call $Fr_rawCopyS2L
end
end
end
)
(func $Fr_eqR (type $_sig_i32i32ri32)
 (param $pA i32)
 (param $pB i32)
(result i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_eq
if
i32.const 1
return
else
i32.const 0
return
end
else
get_local $pA
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_eq
if
i32.const 1
return
else
i32.const 0
return
end
end
else
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_eq
if
i32.const 1
return
else
i32.const 0
return
end
else
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_eq
if
i32.const 1
return
else
i32.const 0
return
end
end
end
else
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_eq
if
i32.const 1
return
else
i32.const 0
return
end
else
get_local $pA
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_eq
if
i32.const 1
return
else
i32.const 0
return
end
end
else
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_eq
if
i32.const 1
return
else
i32.const 0
return
end
else
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_eq
if
i32.const 1
return
else
i32.const 0
return
end
end
end
else
get_local $pA
i32.load
get_local $pB
i32.load
i32.eq
if
i32.const 1
return
else
i32.const 0
return
end
end
end
i32.const 0
)
(func $Fr_gtR (type $_sig_i32i32ri32)
 (param $pA i32)
 (param $pB i32)
(result i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
call $Fr_toNormal
get_local $pA
call $Fr_isNegative
if
get_local $pB
call $Fr_isNegative
if
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_gt
if
i32.const 1
return
else
i32.const 0
return
end
else
i32.const 0
return
end
else
get_local $pB
call $Fr_isNegative
if
i32.const 1
return
else
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_gt
if
i32.const 1
return
else
i32.const 0
return
end
end
end
else
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
call $Fr_toNormal
get_local $pA
call $Fr_isNegative
if
get_local $pB
call $Fr_isNegative
if
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_gt
if
i32.const 1
return
else
i32.const 0
return
end
else
i32.const 0
return
end
else
get_local $pB
call $Fr_isNegative
if
i32.const 1
return
else
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_gt
if
i32.const 1
return
else
i32.const 0
return
end
end
end
else
get_local $pA
i32.load
get_local $pB
i32.load
i32.gt_s
if
i32.const 1
return
else
i32.const 0
return
end
end
end
i32.const 0
)
(func $Fr_eq (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
get_local $pB
call $Fr_eqR
if
get_local $pR
i64.const 1
i64.store
else
get_local $pR
i64.const 0
i64.store
end
)
(func $Fr_neq (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
get_local $pB
call $Fr_eqR
if
get_local $pR
i64.const 0
i64.store
else
get_local $pR
i64.const 1
i64.store
end
)
(func $Fr_gt (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
get_local $pB
call $Fr_eqR
if
get_local $pR
i64.const 0
i64.store
else
get_local $pA
get_local $pB
call $Fr_gtR
if
get_local $pR
i64.const 1
i64.store
else
get_local $pR
i64.const 0
i64.store
end
end
)
(func $Fr_geq (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
get_local $pB
call $Fr_eqR
if
get_local $pR
i64.const 1
i64.store
else
get_local $pA
get_local $pB
call $Fr_gtR
if
get_local $pR
i64.const 1
i64.store
else
get_local $pR
i64.const 0
i64.store
end
end
)
(func $Fr_lt (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
get_local $pB
call $Fr_eqR
if
get_local $pR
i64.const 0
i64.store
else
get_local $pA
get_local $pB
call $Fr_gtR
if
get_local $pR
i64.const 0
i64.store
else
get_local $pR
i64.const 1
i64.store
end
end
)
(func $Fr_leq (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
get_local $pB
call $Fr_eqR
if
get_local $pR
i64.const 1
i64.store
else
get_local $pA
get_local $pB
call $Fr_gtR
if
get_local $pR
i64.const 0
i64.store
else
get_local $pR
i64.const 1
i64.store
end
end
)
(func $Fr_mul (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
 (local $r i64)
 (local $overflow i64)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
else
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
end
else
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
else
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
i32.const 704
get_local $pR
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
end
end
else
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
else
get_local $pB
call $Fr_toMontgomery
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
end
end
else
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pA
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
else
get_local $pA
call $Fr_toMontgomery
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
end
else
get_local $pA
i64.load32_s
get_local $pB
i64.load32_s
i64.mul
set_local $r
get_local $r
i64.const 31
i64.shr_s
set_local $overflow
get_local $overflow
i64.eqz
get_local $overflow
i64.const 1
i64.add
i64.eqz
i32.or
if
get_local $pR
get_local $r
i64.store32
get_local $pR
i32.const 0
i32.store offset=4
else
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
i32.const 8
i32.add
get_local $r
call $Fr_rawCopyS2L
end
end
end
)
(func $Fr_idiv (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
i32.const 16
call $Fr_int_div
)
(func $Fr_mod (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
i32.const 16
get_local $pR
i32.const 8
i32.add
call $Fr_int_div
)
(func $Fr_inv (type $_sig_i32i32)
 (param $pR i32)
 (param $pA i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
i32.const 8
i32.add
i32.const 608
get_local $pR
i32.const 8
i32.add
call $Fr_int_inverseMod
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pR
i32.const 8
i32.add
i32.const 704
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
else
get_local $pR
i32.const -2147483648
i32.store offset=4
end
)
(func $Fr_div (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
 (local $r i64)
 (local $overflow i64)
get_local $pR
get_local $pB
call $Fr_inv
get_local $pR
get_local $pR
get_local $pA
call $Fr_mul
)
(func $Fr_pow (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
call $Fr_toMontgomery
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
i32.const 32
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_exp
)
(func $Fr_fixedShl (type $_sig_i64i64ri64)
 (param $a i64)
 (param $b i64)
(result i64)
get_local $b
i64.const 64
i64.ge_u
if
i64.const 0
return
end
get_local $a
get_local $b
i64.shl
)
(func $Fr_fixedShr (type $_sig_i64i64ri64)
 (param $a i64)
 (param $b i64)
(result i64)
get_local $b
i64.const 64
i64.ge_u
if
i64.const 0
return
end
get_local $a
get_local $b
i64.shr_u
)
(func $Fr_rawgetchunk (type $_sig_i32i32ri64)
 (param $pA i32)
 (param $i i32)
(result i64)
get_local $i
i32.const 4
i32.lt_u
if
get_local $pA
get_local $i
i32.const 8
i32.mul
i32.add
i64.load
return
end
i64.const 0
)
(func $Fr_rawshll (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $n i32)
 (local $oWords1 i32)
 (local $oBits1 i64)
 (local $oWords2 i32)
 (local $oBits2 i64)
 (local $i i32)
i32.const 0
get_local $n
i32.const 6
i32.shr_u
i32.sub
set_local $oWords1
get_local $oWords1
i32.const 1
i32.sub
set_local $oWords2
get_local $n
i64.extend_u/i32
i64.const 63
i64.and
set_local $oBits1
i64.const 64
get_local $oBits1
i64.sub
set_local $oBits2
i32.const 0
set_local $i
block
loop
get_local $i
i32.const 4
i32.eq
br_if 1
get_local $pR
get_local $i
i32.const 8
i32.mul
i32.add
get_local $pA
get_local $oWords1
get_local $i
i32.add
call $Fr_rawgetchunk
get_local $oBits1
call $Fr_fixedShl
get_local $pA
get_local $oWords2
get_local $i
i32.add
call $Fr_rawgetchunk
get_local $oBits2
call $Fr_fixedShr
i64.or
i64.store
get_local $i
i32.const 1
i32.add
set_local $i
br 0
end
end
)
(func $Fr_rawshrl (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $n i32)
 (local $oWords1 i32)
 (local $oBits1 i64)
 (local $oWords2 i32)
 (local $oBits2 i64)
 (local $i i32)
get_local $n
i32.const 6
i32.shr_u
set_local $oWords1
get_local $oWords1
i32.const 1
i32.add
set_local $oWords2
get_local $n
i64.extend_u/i32
i64.const 63
i64.and
set_local $oBits1
i64.const 64
get_local $oBits1
i64.sub
set_local $oBits2
i32.const 0
set_local $i
block
loop
get_local $i
i32.const 4
i32.eq
br_if 1
get_local $pR
get_local $i
i32.const 8
i32.mul
i32.add
get_local $pA
get_local $oWords1
get_local $i
i32.add
call $Fr_rawgetchunk
get_local $oBits1
call $Fr_fixedShr
get_local $pA
get_local $oWords2
get_local $i
i32.add
call $Fr_rawgetchunk
get_local $oBits2
call $Fr_fixedShl
i64.or
i64.store
get_local $i
i32.const 1
i32.add
set_local $i
br 0
end
end
)
(func $Fr_adjustBinResult (type $_sig_i32)
 (param $pA i32)
get_local $pA
get_local $pA
i64.load offset=32
i64.const 4611686018427387903
i64.and
i64.store offset=32
get_local $pA
i32.const 8
i32.add
i32.const 608
call $Fr_int_gte
if
get_local $pA
i32.const 8
i32.add
i32.const 608
get_local $pA
i32.const 8
i32.add
call $Fr_int_sub
drop
end
)
(func $Fr_rawshl (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $n i32)
 (local $r i64)
 (local $overflow i64)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
call $Fr_toNormal
get_local $pR
i32.const 8
i32.add
get_local $pA
i32.const 8
i32.add
get_local $n
call $Fr_rawshll
get_local $pR
call $Fr_adjustBinResult
get_local $pR
i32.const -2147483648
i32.store offset=4
else
get_local $pA
call $Fr_isNegative
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pR
i32.const 8
i32.add
get_local $pA
i32.const 8
i32.add
get_local $n
call $Fr_rawshll
get_local $pR
call $Fr_adjustBinResult
get_local $pR
i32.const -2147483648
i32.store offset=4
else
get_local $n
i32.const 30
i32.gt_u
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pR
i32.const 8
i32.add
get_local $pA
i32.const 8
i32.add
get_local $n
call $Fr_rawshll
get_local $pR
call $Fr_adjustBinResult
get_local $pR
i32.const -2147483648
i32.store offset=4
else
get_local $pA
i64.load32_s
get_local $n
i64.extend_u/i32
i64.shl
set_local $r
get_local $r
i64.const 31
i64.shr_s
set_local $overflow
get_local $overflow
i64.eqz
get_local $overflow
i64.const 1
i64.add
i64.eqz
i32.or
if
get_local $pR
get_local $r
i64.store32
get_local $pR
i32.const 0
i32.store offset=4
else
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
i32.const 8
i32.add
get_local $r
call $Fr_rawCopyS2L
end
end
end
end
)
(func $Fr_rawshr (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $n i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
call $Fr_toNormal
get_local $pR
i32.const 8
i32.add
get_local $pA
i32.const 8
i32.add
get_local $n
call $Fr_rawshrl
get_local $pR
i32.const -2147483648
i32.store offset=4
else
get_local $pA
call $Fr_isNegative
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pR
i32.const 8
i32.add
get_local $pA
i32.const 8
i32.add
get_local $n
call $Fr_rawshrl
get_local $pR
i32.const -2147483648
i32.store offset=4
else
get_local $n
i32.const 32
i32.lt_u
if
get_local $pR
get_local $pA
i32.load
get_local $n
i32.shr_u
i32.store
else
get_local $pR
i32.const 0
i32.store
end
get_local $pR
i32.const 0
i32.store offset=4
end
end
)
(func $Fr_shl (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pB
call $Fr_isNegative
if
i32.const 48
get_local $pB
call $Fr_neg
i32.const 8
i32.const 48
i32.const 88
call $Fr_lt
i32.const 8
i32.load
if
get_local $pR
get_local $pA
i32.const 48
call $Fr_toInt
call $Fr_rawshr
else
get_local $pR
call $Fr_int_zero
end
else
i32.const 8
get_local $pB
i32.const 88
call $Fr_lt
i32.const 8
i32.load
if
get_local $pR
get_local $pA
get_local $pB
call $Fr_toInt
call $Fr_rawshl
else
get_local $pR
call $Fr_int_zero
end
end
)
(func $Fr_shr (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pB
call $Fr_isNegative
if
i32.const 48
get_local $pB
call $Fr_neg
i32.const 8
i32.const 48
i32.const 88
call $Fr_lt
i32.const 8
i32.load
if
get_local $pR
get_local $pA
i32.const 48
call $Fr_toInt
call $Fr_rawshl
else
get_local $pR
call $Fr_int_zero
end
else
i32.const 8
get_local $pB
i32.const 88
call $Fr_lt
i32.const 8
i32.load
if
get_local $pR
get_local $pA
get_local $pB
call $Fr_toInt
call $Fr_rawshr
else
get_local $pR
call $Fr_int_zero
end
end
)
(func $Fr_rawbandl (type $_sig_i32i32i32)
 (param $pA i32)
 (param $pB i32)
 (param $pR i32)
get_local $pR
get_local $pA
i64.load
get_local $pB
i64.load
i64.and
i64.store
get_local $pR
get_local $pA
i64.load offset=8
get_local $pB
i64.load offset=8
i64.and
i64.store offset=8
get_local $pR
get_local $pA
i64.load offset=16
get_local $pB
i64.load offset=16
i64.and
i64.store offset=16
get_local $pR
get_local $pA
i64.load offset=24
get_local $pB
i64.load offset=24
i64.and
i64.store offset=24
)
(func $Fr_band (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbandl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pA
call $Fr_isNegative
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbandl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbandl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pB
call $Fr_isNegative
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbandl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pR
get_local $pA
i32.load
get_local $pB
i32.load
i32.and
i32.store
get_local $pR
i32.const 0
i32.store offset=4
end
end
end
end
)
(func $Fr_rawborl (type $_sig_i32i32i32)
 (param $pA i32)
 (param $pB i32)
 (param $pR i32)
get_local $pR
get_local $pA
i64.load
get_local $pB
i64.load
i64.or
i64.store
get_local $pR
get_local $pA
i64.load offset=8
get_local $pB
i64.load offset=8
i64.or
i64.store offset=8
get_local $pR
get_local $pA
i64.load offset=16
get_local $pB
i64.load offset=16
i64.or
i64.store offset=16
get_local $pR
get_local $pA
i64.load offset=24
get_local $pB
i64.load offset=24
i64.or
i64.store offset=24
)
(func $Fr_bor (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawborl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pA
call $Fr_isNegative
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawborl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawborl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pB
call $Fr_isNegative
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawborl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pR
get_local $pA
i32.load
get_local $pB
i32.load
i32.or
i32.store
get_local $pR
i32.const 0
i32.store offset=4
end
end
end
end
)
(func $Fr_rawbxorl (type $_sig_i32i32i32)
 (param $pA i32)
 (param $pB i32)
 (param $pR i32)
get_local $pR
get_local $pA
i64.load
get_local $pB
i64.load
i64.xor
i64.store
get_local $pR
get_local $pA
i64.load offset=8
get_local $pB
i64.load offset=8
i64.xor
i64.store offset=8
get_local $pR
get_local $pA
i64.load offset=16
get_local $pB
i64.load offset=16
i64.xor
i64.store offset=16
get_local $pR
get_local $pA
i64.load offset=24
get_local $pB
i64.load offset=24
i64.xor
i64.store offset=24
)
(func $Fr_bxor (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbxorl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pA
call $Fr_isNegative
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbxorl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbxorl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pB
call $Fr_isNegative
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbxorl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pR
get_local $pA
i32.load
get_local $pB
i32.load
i32.xor
i32.store
get_local $pR
i32.const 0
i32.store offset=4
end
end
end
end
)
(func $Fr_rawbnotl (type $_sig_i32i32)
 (param $pA i32)
 (param $pR i32)
get_local $pR
get_local $pA
i64.load
i64.const -1
i64.xor
i64.store
get_local $pR
get_local $pA
i64.load offset=8
i64.const -1
i64.xor
i64.store offset=8
get_local $pR
get_local $pA
i64.load offset=16
i64.const -1
i64.xor
i64.store offset=16
get_local $pR
get_local $pA
i64.load offset=24
i64.const -1
i64.xor
i64.store offset=24
)
(func $Fr_bnot (type $_sig_i32i32)
 (param $pR i32)
 (param $pA i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbnotl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
)
(func $Fr_land (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
call $Fr_isTrue
get_local $pB
call $Fr_isTrue
i32.and
if
get_local $pR
i64.const 1
i64.store
else
get_local $pR
i64.const 0
i64.store
end
)
(func $Fr_lor (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
call $Fr_isTrue
get_local $pB
call $Fr_isTrue
i32.or
if
get_local $pR
i64.const 1
i64.store
else
get_local $pR
i64.const 0
i64.store
end
)
(func $Fr_lnot (type $_sig_i32i32)
 (param $pR i32)
 (param $pA i32)
get_local $pA
call $Fr_isTrue
if
get_local $pR
i64.const 0
i64.store
else
get_local $pR
i64.const 1
i64.store
end
)
(func $getOffsetIOSubComponet (type $_t_i32i32ri32)
 (param $comp i32)
 (param $ios i32)
(result i32)
i32.const 4420032
local.get $comp
i32.add
i32.load
local.get $ios
i32.const 4
i32.mul
i32.add
i32.load
)
(func $getVersion (type $_t_ri32)
i32.const 2
)
(func $getMinorVersion (type $_t_ri32)
i32.const 1
)
(func $getPatchVersion (type $_t_ri32)
i32.const 6
)
(func $getSharedRWMemoryStart (type $_t_ri32)
(result i32)
i32.const 1992
)
(func $readSharedRWMemory (type $_t_i32ri32)
 (param $p i32)
(result i32)
i32.const 1992
local.get $p
i32.const 4
i32.mul
i32.add
i32.load
)
(func $writeSharedRWMemory (type $_t_i32i32)
 (param $p i32)
 (param $v i32)
i32.const 1992
local.get $p
i32.const 4
i32.mul
i32.add
local.get $v
i32.store
)
(func $reserveStackFr (type $_t_i32ri32)
 (param $nbytes i32)
(result i32)
 (local $inistack i32)
 (local $newbsize i32)
 (local $memorybsize i32)
i32.const 0
i32.load
local.set $inistack
local.get $inistack
local.get $nbytes
i32.add
local.set $newbsize
i32.const 0
local.get $newbsize
i32.store
memory.size
i32.const 16
i32.shl
local.set $memorybsize
local.get $newbsize
local.get $memorybsize
i32.gt_u
if
local.get $newbsize
local.get $memorybsize
i32.sub
i32.const 65535
i32.add
i32.const 16
i32.shr_u
memory.grow
i32.const -1
i32.eq
if
i32.const 5
call $exceptionHandler
end
end
local.get $inistack
)
(func $init (type $_t_i32)
 (param $t i32)
 (local $i i32)
 (local $merror i32)
i32.const 6128
;; Number of Main inputs
i32.const 54
i32.store
i32.const 6132
local.set $i
block
loop
local.get $i
i32.const 6348
i32.eq
br_if 1
local.get $i
i32.const 0
i32.store
local.get $i
i32.const 4
i32.add
local.set $i
br 0
end
end
i32.const 4291088
i32.const 4291092
i32.store
i32.const 161968
call $Main_30_create
drop
)
(func $getInputSignalMapPosition (type $_t_i64ri32)
 (param $hn i64)
(result i32)
 (local $ini i32)
 (local $i i32)
 (local $aux i32)
local.get $hn
i32.wrap_i64
i32.const 255
i32.and
local.set $ini
local.get $ini
local.set $i
block
loop
i32.const 2032
local.get $i
i32.const 16
i32.mul
i32.add
local.set $aux
local.get $aux
i64.load
local.get $hn
i64.eq
if
local.get $aux
return
end
local.get $aux
i64.load
i64.eqz
if
i32.const 0
return
end
local.get $i
i32.const 1
i32.add
i32.const 255
i32.and
local.set $i
local.get $i
local.get $ini
i32.eq
if
i32.const 0
return
end
br 0
end
end
i32.const 0
)
(func $checkIfInputSignalSet (type $_t_i32ri32)
 (param $sip i32)
(result i32)
i32.const 6132
local.get $sip
i32.add
i32.load
)
(func $setInputSignal (type $_t_i32i32i32)
 (param $hmsb i32)
 (param $hlsb i32)
 (param $pos i32)
 (local $ns i32) ;; number of signals to set
 (local $mp i32) ;; map position
 (local $sip i32) ;; signal+position number
 (local $sipm i32) ;; position in the signal memory
 (local $vint i32)
 (local $merror i32)
i32.const 6128
i32.load
local.set $ns
local.get $ns
i32.eqz
if
i32.const 2
call $exceptionHandler
else
local.get $hmsb
i64.extend_i32_u
i64.const 32
i64.shl
local.get $hlsb
i64.extend_i32_u
i64.or
call $getInputSignalMapPosition
local.tee $mp
i32.eqz
if
i32.const 1
call $exceptionHandler
else
local.get $pos
local.get $mp
i32.load offset=12
i32.ge_u
if
i32.const 6
call $exceptionHandler
else
local.get $mp
i32.load offset=8
local.get $pos
i32.add
local.tee $sip
i32.const 1
i32.sub
call $checkIfInputSignalSet
if
i32.const 3
call $exceptionHandler
else
local.get $sip
i32.const 40
i32.mul
i32.const 161928
i32.add
local.set $sipm
local.get $sipm
i32.const 1984
call $Fr_toInt
local.set $vint
local.get $vint
i32.store
local.get $sipm
i32.const 0
i32.store offset=4
local.get $sipm
i32.const 8
i32.add
call $Fr_int_zero
local.get $sipm
i32.const 1984
call $Fr_eqR
if
local.get $sipm
local.get $vint
i32.store
local.get $sipm
i32.const 0
i32.store offset=4
local.get $sipm
i32.const 8
i32.add
call $Fr_int_zero
else
local.get $sipm
i32.const 1984
call $Fr_copy
end
local.get $ns
i32.const -1
i32.add
local.set $ns
i32.const 6128
local.get $ns
i32.store
local.get $ns
i32.eqz
if
i32.const 4291092
call $Main_30_run
local.tee $merror
if
local.get $merror
call $exceptionHandler
end
end
end
end
end
end
)
(func $getInputSignalSize (type $_t_i32i32ri32)
 (param $hmsb i32)
 (param $hlsb i32)
(result i32)
local.get $hmsb
i64.extend_i32_u
i64.const 32
i64.shl
local.get $hlsb
i64.extend_i32_u
i64.or
call $getInputSignalMapPosition
i32.load offset=12
)
(func $getRawPrime (type $_t_void)
i32.const 1952
i32.const 1992
call $Fr_int_copy
)
(func $getFieldNumLen32 (type $_t_ri32)
(result i32)
i32.const 8
)
(func $getInputSize (type $_t_ri32)
(result i32)
i32.const 54
)
(func $getWitnessSize (type $_t_ri32)
(result i32)
i32.const 38894
)
(func $getWitness (type $_t_i32)
 (param $p i32)
 (local $c i32)
i32.const 6348
local.get $p
i32.const 2
i32.shl
i32.add
i32.load
i32.const 40
i32.mul
i32.const 161928
i32.add
local.set $c
i32.const 1984
local.get $c
call $Fr_copy
i32.const 1984
call $Fr_toLongNormal
)
(func $copy32inSharedRWMemory (type $_t_i32)
 (param $p i32)
i32.const 1992
local.get $p
i32.store
i32.const 1992
i32.const 0
i32.store offset=4
i32.const 1992
i64.const 0
i64.store offset=8
i32.const 1992
i64.const 0
i64.store offset=16
i32.const 1992
i64.const 0
i64.store offset=24
)
(func $copyFr2SharedRWMemory (type $_t_i32)
 (param $p i32)
i32.const 1984
local.get $p
call $Fr_copy
i32.const 1984
call $Fr_toLongNormal
)
(func $getMessageChar (type $_t_ri32)
 (local $c i32)
i32.const 4420284
i32.load
local.set $c
local.get $c
i32.const 256
i32.ge_u
if
i32.const 0
return
else
i32.const 4420288
local.get $c
i32.add
i32.load8_u
i32.const 4420284
local.get $c
i32.const 1
i32.add
i32.store
return
end
i32.const 0
)
(func $buildBufferMessage (type $_t_i32i32)
 (param $m i32)
 (param $l i32)
 (local $em i32)
 (local $bm i32)
 (local $mc i32)
 (local $p10 i32)
i32.const 4420544
local.get $m
i32.const 240
i32.mul
i32.add
local.set $em
i32.const 4420288
local.set $bm
block
loop
i32.const 4420528
local.get $em
i32.eq
br_if 1
local.get $em
i32.load8_u
local.set $mc
local.get $mc
i32.eqz
br_if 1
local.get $bm
local.get $mc
i32.store8
local.get $em
i32.const 1
i32.add
local.set $em
local.get $bm
i32.const 1
i32.add
local.set $bm
br 0
end
end
local.get $bm
i32.const 0x20
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
local.get $bm
i32.const 0x6C
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
local.get $bm
i32.const 0x69
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
local.get $bm
i32.const 0x6E
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
local.get $bm
i32.const 0x65
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
local.get $bm
i32.const 0x3A
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
local.get $bm
i32.const 0x20
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
i32.const 1
local.set $p10
block
loop
local.get $p10
i32.const 10
i32.mul
local.get $l
i32.gt_u
br_if 1
local.get $p10
i32.const 10
i32.mul
local.set $p10
br 0
end
end
block
loop
local.get $p10
i32.eqz
br_if 1
local.get $bm
local.get $l
local.get $p10
i32.div_u
i32.const 0x30
i32.add
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
local.get $l
local.get $p10
i32.rem_u
local.set $l
local.get $p10
i32.const 10
i32.div_u
local.set $p10
br 0
end
end
block
loop
local.get $bm
i32.const 4420544
i32.eq
br_if 1
local.get $bm
i32.const 0
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
br 0
end
end
i32.const 4420284
i32.const 0
i32.store
)
(func $buildLogMessage (type $_t_i32)
 (param $m i32)
 (local $em i32)
 (local $bm i32)
 (local $mc i32)
local.get $m
local.set $em
i32.const 4420288
local.set $bm
block
loop
i32.const 4420528
local.get $em
i32.eq
br_if 1
local.get $em
i32.load8_u
local.set $mc
local.get $mc
i32.eqz
br_if 1
local.get $bm
local.get $mc
i32.store8
local.get $em
i32.const 1
i32.add
local.set $em
local.get $bm
i32.const 1
i32.add
local.set $bm
br 0
end
end
block
loop
local.get $bm
i32.const 4420544
i32.eq
br_if 1
local.get $bm
i32.const 0
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
br 0
end
end
i32.const 4420284
i32.const 0
i32.store
)
(func $MiMC7_0_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 0
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 2
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $MiMC7_0_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 3760
i32.add
local.set $expaux
i32.const 4000
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4427984
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428104
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428184
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428264
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428344
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428424
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428504
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428584
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428664
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 10
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428744
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 11
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428824
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 12
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428904
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 13
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428984
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4429064
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4429144
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 16
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4429224
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 17
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4429304
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 18
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4429384
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 19
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4429464
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 20
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4429544
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 21
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4429624
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 22
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4429704
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 23
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4429784
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 24
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4429864
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 25
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4429944
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 26
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4430024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 27
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4430104
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 28
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4430184
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 29
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4430264
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 30
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4430344
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 31
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4430424
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 32
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4430504
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 33
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4430584
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 34
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4430664
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 35
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4430744
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 36
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4430824
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 37
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4430904
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 38
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4430984
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 39
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4431064
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 40
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4431144
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 41
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4431224
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 42
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4431304
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 43
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4431384
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 44
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4431464
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 45
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4431544
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 46
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4431624
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 47
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4431704
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 48
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4431784
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 49
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4431864
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 50
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4431944
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 51
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4432024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 52
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4432104
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 53
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4432184
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 54
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4432264
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 55
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4432344
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 56
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4432424
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 57
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4432504
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 58
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4432584
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 59
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4432664
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 60
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4432744
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 61
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4432824
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 62
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4432904
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 63
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4432984
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 64
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4433064
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 65
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4433144
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 66
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4433224
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 67
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4433304
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 68
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4433384
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 69
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4433464
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 70
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4433544
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 71
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4433624
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 72
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4433704
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 73
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4433784
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 74
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4433864
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 75
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4433944
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 76
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4434024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 77
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4434104
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 78
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4434184
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 79
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4434264
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 80
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4434344
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 81
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4434424
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 82
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4434504
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 83
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4434584
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 84
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4434664
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 85
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4434744
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 86
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4434824
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 87
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4434904
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 88
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4434984
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 89
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435064
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 90
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435144
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 26
;; getting dest
;; value bucket
i32.const 91
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435224
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 120
;; getting dest
;; value bucket
i32.const 92
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 126
;; getting dest
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 126
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4427984
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 127
;; getting dest
;; value bucket
i32.const 92
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
else
;; store bucket. Line 127
;; getting dest
;; value bucket
i32.const 92
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 276
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 128
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 3
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 92
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 92
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 129
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 94
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 3
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 3
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 130
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 185
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 94
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 3
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4435184
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 132
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 276
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 185
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 92
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
else
;; store bucket. Line 134
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 275
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 92
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 126
;; getting dest
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 93
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $MultiMiMC7_1_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 1
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 7
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 36
i32.add
i32.store
local.get $offset
)
(func $MultiMiMC7_1_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 120
i32.add
local.set $expaux
i32.const 280
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428464
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4427984
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
local.set $createloopsubcmp
i32.const 600
local.get $signalstart
i32.add
local.set $createloopoffset
i32.const 6
local.set $createloopcounter
block
loop
local.get $createloopsubcmp
local.get $createloopoffset
call $MiMC7_0_create
i32.store
local.get $createloopcounter
i32.const 1
i32.sub
local.set $createloopcounter
local.get $createloopcounter
i32.eqz
br_if 1
local.get $createloopsubcmp
i32.const 4
i32.add
local.set $createloopsubcmp
local.get $createloopoffset
i32.const 14640
i32.add
local.set $createloopoffset
br 0
end
end
;; end create component bucket
;; store bucket. Line 147
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 148
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 148
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428464
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 150
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MiMC7_0_run
local.tee $merror
if
i32.const 1
i32.const 150
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 151
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MiMC7_0_run
local.tee $merror
if
i32.const 1
i32.const 151
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 152
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 148
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 155
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $Num2Bits_2_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 2
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 1
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $Num2Bits_2_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 160
i32.add
local.set $expaux
i32.const 400
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435264
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 28
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 30
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 31
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 31
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4435264
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 32
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 253
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(SHIFT_R)
call $Fr_shr
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(BITAND)
call $Fr_band
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 2
i32.const 33
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; store bucket. Line 34
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 35
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 31
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 253
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 2
i32.const 38
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $Num2Bits_3_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 3
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 1
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $Num2Bits_3_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 160
i32.add
local.set $expaux
i32.const 400
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435304
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 28
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 30
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 31
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 31
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4435304
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 32
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 135
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(SHIFT_R)
call $Fr_shr
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(BITAND)
call $Fr_band
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 3
i32.const 33
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; store bucket. Line 34
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 35
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 31
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 135
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 3
i32.const 38
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $CompConstant_4_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 4
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 254
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 16
i32.add
i32.store
local.get $offset
)
(func $CompConstant_4_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 400
i32.add
local.set $expaux
i32.const 720
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435344
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 15320
local.get $signalstart
i32.add
call $Num2Bits_3_create
i32.store
;; end create component bucket
;; store bucket. Line 32
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 33
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 34
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 35
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 37
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 39
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435384
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 40
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 41
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 42
;; getting dest
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 44
;; getting dest
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 44
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4435424
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 45
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; value bucket
i32.const 4435344
;; end of value bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428144
;; end of value bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(SHIFT_R)
call $Fr_shr
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(BITAND)
call $Fr_band
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 46
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; value bucket
i32.const 4435344
;; end of value bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428144
;; end of value bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(SHIFT_R)
call $Fr_shr
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(BITAND)
call $Fr_band
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 47
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 48
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(BOOL_AND)
call $Fr_land
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 51
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 255
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(PREFIX_SUB)
call $Fr_neg
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
else
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(BOOL_AND)
call $Fr_land
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 53
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 255
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; compute bucket
local.get $expaux
i32.const 200
i32.add
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 200
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 200
i32.add
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 200
i32.add
;; end of compute bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
else
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; value bucket
i32.const 4428064
;; end of value bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(BOOL_AND)
call $Fr_land
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 55
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 255
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
else
;; store bucket. Line 57
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 255
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(PREFIX_SUB)
call $Fr_neg
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
end
;; end of branch bucket
end
;; end of branch bucket
end
;; end of branch bucket
;; store bucket. Line 60
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 255
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 62
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 63
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 64
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428144
;; end of value bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 44
;; getting dest
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 67
;; getting dest
;; value bucket
i32.const 382
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 71
;; getting dest
;; value bucket
i32.const 135
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 382
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Num2Bits_3_run
local.tee $merror
if
i32.const 4
i32.const 71
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 73
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 127
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $MultiMiMC7_5_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 5
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 6
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 32
i32.add
i32.store
local.get $offset
)
(func $MultiMiMC7_5_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 120
i32.add
local.set $expaux
i32.const 280
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428384
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4427984
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
local.set $createloopsubcmp
i32.const 520
local.get $signalstart
i32.add
local.set $createloopoffset
i32.const 5
local.set $createloopcounter
block
loop
local.get $createloopsubcmp
local.get $createloopoffset
call $MiMC7_0_create
i32.store
local.get $createloopcounter
i32.const 1
i32.sub
local.set $createloopcounter
local.get $createloopcounter
i32.eqz
br_if 1
local.get $createloopsubcmp
i32.const 4
i32.add
local.set $createloopsubcmp
local.get $createloopoffset
i32.const 14640
i32.add
local.set $createloopoffset
br 0
end
end
;; end create component bucket
;; store bucket. Line 147
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 148
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 148
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428384
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 150
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MiMC7_0_run
local.tee $merror
if
i32.const 5
i32.const 150
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 151
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 7
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MiMC7_0_run
local.tee $merror
if
i32.const 5
i32.const 151
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 152
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 7
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 7
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 148
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 155
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 12
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $CompConstant_6_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 6
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 254
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 16
i32.add
i32.store
local.get $offset
)
(func $CompConstant_6_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 400
i32.add
local.set $expaux
i32.const 720
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435464
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 15320
local.get $signalstart
i32.add
call $Num2Bits_3_create
i32.store
;; end create component bucket
;; store bucket. Line 32
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 33
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 34
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 35
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 37
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 39
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435384
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 40
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 41
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 42
;; getting dest
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 44
;; getting dest
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 44
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4435424
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 45
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; value bucket
i32.const 4435464
;; end of value bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428144
;; end of value bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(SHIFT_R)
call $Fr_shr
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(BITAND)
call $Fr_band
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 46
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; value bucket
i32.const 4435464
;; end of value bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428144
;; end of value bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(SHIFT_R)
call $Fr_shr
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(BITAND)
call $Fr_band
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 47
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 48
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(BOOL_AND)
call $Fr_land
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 51
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 255
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(PREFIX_SUB)
call $Fr_neg
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
else
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(BOOL_AND)
call $Fr_land
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 53
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 255
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; compute bucket
local.get $expaux
i32.const 200
i32.add
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 200
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 200
i32.add
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 200
i32.add
;; end of compute bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
else
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; value bucket
i32.const 4428064
;; end of value bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(BOOL_AND)
call $Fr_land
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 55
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 255
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
else
;; store bucket. Line 57
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 255
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(PREFIX_SUB)
call $Fr_neg
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
end
;; end of branch bucket
end
;; end of branch bucket
end
;; end of branch bucket
;; store bucket. Line 60
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 255
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 62
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 63
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 64
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428144
;; end of value bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 44
;; getting dest
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 67
;; getting dest
;; value bucket
i32.const 382
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 71
;; getting dest
;; value bucket
i32.const 135
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 382
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Num2Bits_3_run
local.tee $merror
if
i32.const 6
i32.const 71
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 73
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 127
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $AliasCheck_7_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 7
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 254
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 16
i32.add
i32.store
local.get $offset
)
(func $AliasCheck_7_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 40
i32.add
local.set $expaux
i32.const 160
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 10160
local.get $signalstart
i32.add
call $CompConstant_6_create
i32.store
;; end create component bucket
;; store bucket. Line 30
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 30
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4435504
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 30
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $CompConstant_6_run
local.tee $merror
if
i32.const 7
i32.const 30
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 30
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 7
i32.const 32
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $Num2Bits_8_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 8
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 1
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $Num2Bits_8_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 160
i32.add
local.set $expaux
i32.const 400
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435504
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 28
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 30
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 31
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 31
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4435504
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 32
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 254
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(SHIFT_R)
call $Fr_shr
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(BITAND)
call $Fr_band
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 8
i32.const 33
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; store bucket. Line 34
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 35
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 31
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 254
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 8
i32.const 38
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $Num2Bits_strict_9_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 9
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 1
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 20
i32.add
i32.store
local.get $offset
)
(func $Num2Bits_strict_9_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 40
i32.add
local.set $expaux
i32.const 160
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 10200
local.get $signalstart
i32.add
call $AliasCheck_7_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 41120
local.get $signalstart
i32.add
call $Num2Bits_8_create
i32.store
;; end create component bucket
;; store bucket. Line 47
;; getting dest
;; value bucket
i32.const 254
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 254
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Num2Bits_8_run
local.tee $merror
if
i32.const 9
i32.const 47
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 49
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 49
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4435504
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 50
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 51
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $AliasCheck_7_run
local.tee $merror
if
i32.const 9
i32.const 51
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 49
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $BabyAdd_10_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 10
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 4
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $BabyAdd_10_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 80
i32.add
local.set $expaux
i32.const 400
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 37
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435544
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 38
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435584
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 40
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 41
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 42
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 4435624
;; end of value bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 43
;; getting dest
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 45
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 4428064
;; end of value bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 4435584
;; end of value bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 4428064
;; end of value bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 4435584
;; end of value bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 10
i32.const 46
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; store bucket. Line 48
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 4435544
;; end of value bucket
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 4428064
;; end of value bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 4435584
;; end of value bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 4428064
;; end of value bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 4435584
;; end of value bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 200
i32.add
;; value bucket
i32.const 4435544
;; end of value bucket
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 200
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 10
i32.const 49
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $BabyDbl_11_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 11
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 2
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 16
i32.add
i32.store
local.get $offset
)
(func $BabyDbl_11_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 0
i32.add
local.set $expaux
i32.const 80
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 160
local.get $signalstart
i32.add
call $BabyAdd_10_create
i32.store
;; end create component bucket
;; store bucket. Line 59
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 11
i32.const 59
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 60
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 11
i32.const 60
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 61
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 11
i32.const 61
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 62
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 11
i32.const 62
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 64
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 65
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $IsZero_12_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 12
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 1
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $IsZero_12_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 0
i32.add
local.set $expaux
i32.const 160
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(NOT_EQ)
call $Fr_neq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 30
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; value bucket
i32.const 4428064
;; end of value bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
else
;; store bucket. Line 30
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 32
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(PREFIX_SUB)
call $Fr_neg
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 12
i32.const 33
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $Edwards2Montgomery_13_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 13
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 2
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $Edwards2Montgomery_13_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 0
i32.add
local.set $expaux
i32.const 240
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 34
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; value bucket
i32.const 4428064
;; end of value bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 4428064
;; end of value bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 35
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; value bucket
i32.const 4428064
;; end of value bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 4428064
;; end of value bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 13
i32.const 38
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 13
i32.const 39
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $MontgomeryDouble_14_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 14
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 2
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $MontgomeryDouble_14_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 160
i32.add
local.set $expaux
i32.const 480
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 126
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435544
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 127
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435584
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 129
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435664
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 130
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 135
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 137
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; value bucket
i32.const 4428224
;; end of value bucket
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 4435704
;; end of value bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 4428144
;; end of value bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; value bucket
i32.const 4428144
;; end of value bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 4428224
;; end of value bucket
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 200
i32.add
;; value bucket
i32.const 4435704
;; end of value bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 200
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 14
i32.const 138
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; store bucket. Line 140
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; value bucket
i32.const 4428064
;; end of value bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; value bucket
i32.const 4435664
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 4428144
;; end of value bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 141
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $MontgomeryAdd_15_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 15
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 4
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $MontgomeryAdd_15_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 160
i32.add
local.set $expaux
i32.const 440
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 94
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435544
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 95
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435584
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 97
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435664
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 98
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 102
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 15
i32.const 103
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; store bucket. Line 105
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 4428064
;; end of value bucket
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; value bucket
i32.const 4435664
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 106
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $Multiplexor2_16_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 16
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 5
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $Multiplexor2_16_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 0
i32.add
local.set $expaux
i32.const 200
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 30
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 31
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $BitElementMulAny_17_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 17
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 5
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 24
i32.add
i32.store
local.get $offset
)
(func $BitElementMulAny_17_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 0
i32.add
local.set $expaux
i32.const 80
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 640
local.get $signalstart
i32.add
call $MontgomeryDouble_14_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 360
local.get $signalstart
i32.add
call $MontgomeryAdd_15_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 880
local.get $signalstart
i32.add
call $Multiplexor2_16_create
i32.store
;; end create component bucket
;; store bucket. Line 46
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_16_run
local.tee $merror
if
i32.const 17
i32.const 46
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 48
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryDouble_14_run
local.tee $merror
if
i32.const 17
i32.const 48
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 49
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryDouble_14_run
local.tee $merror
if
i32.const 17
i32.const 49
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 50
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 17
i32.const 50
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 51
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 17
i32.const 51
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 52
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 17
i32.const 52
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 53
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 17
i32.const 53
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 54
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_16_run
local.tee $merror
if
i32.const 17
i32.const 54
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 55
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_16_run
local.tee $merror
if
i32.const 17
i32.const 55
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 56
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_16_run
local.tee $merror
if
i32.const 17
i32.const 56
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 57
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_16_run
local.tee $merror
if
i32.const 17
i32.const 57
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 59
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 60
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 61
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 62
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $Montgomery2Edwards_18_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 18
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 2
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $Montgomery2Edwards_18_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 0
i32.add
local.set $expaux
i32.const 240
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 53
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 54
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 18
i32.const 56
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 18
i32.const 57
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $SegmentMulAny_19_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 19
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 150
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 616
i32.add
i32.store
local.get $offset
)
(func $SegmentMulAny_19_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 80
i32.add
local.set $expaux
i32.const 240
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435744
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
local.set $createloopsubcmp
i32.const 6160
local.get $signalstart
i32.add
local.set $createloopoffset
i32.const 147
local.set $createloopcounter
block
loop
local.get $createloopsubcmp
local.get $createloopoffset
call $BitElementMulAny_17_create
i32.store
local.get $createloopcounter
i32.const 1
i32.sub
local.set $createloopcounter
local.get $createloopcounter
i32.eqz
br_if 1
local.get $createloopsubcmp
i32.const 4
i32.add
local.set $createloopsubcmp
local.get $createloopoffset
i32.const 1160
i32.add
local.set $createloopoffset
br 0
end
end
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 147
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 176680
local.get $signalstart
i32.add
call $Edwards2Montgomery_13_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 148
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 177520
local.get $signalstart
i32.add
call $Montgomery2Edwards_18_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 149
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 176840
local.get $signalstart
i32.add
call $BabyAdd_10_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 150
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 177240
local.get $signalstart
i32.add
call $Multiplexor2_16_create
i32.store
;; end create component bucket
;; store bucket. Line 80
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 147
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 152
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Edwards2Montgomery_13_run
local.tee $merror
if
i32.const 19
i32.const 80
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 81
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 147
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 153
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Edwards2Montgomery_13_run
local.tee $merror
if
i32.const 19
i32.const 81
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 83
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 86
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 147
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 19
i32.const 86
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 87
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 147
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 19
i32.const 87
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 88
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 147
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 19
i32.const 88
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 89
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 147
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 19
i32.const 89
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 90
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 19
i32.const 90
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 92
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 92
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4435784
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 95
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 19
i32.const 95
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 96
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 19
i32.const 96
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 97
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 19
i32.const 97
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 98
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 19
i32.const 98
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 99
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 19
i32.const 99
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 92
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 102
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 146
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 103
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 146
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 107
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 148
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 146
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_18_run
local.tee $merror
if
i32.const 19
i32.const 107
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 108
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 148
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 146
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_18_run
local.tee $merror
if
i32.const 19
i32.const 108
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 112
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 149
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 148
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 19
i32.const 112
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 113
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 149
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 148
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 19
i32.const 113
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 114
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 149
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 152
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(PREFIX_SUB)
call $Fr_neg
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 19
i32.const 114
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 115
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 149
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 153
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 19
i32.const 115
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 119
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 150
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_16_run
local.tee $merror
if
i32.const 19
i32.const 119
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 120
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 150
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 149
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_16_run
local.tee $merror
if
i32.const 19
i32.const 120
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 121
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 150
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 149
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_16_run
local.tee $merror
if
i32.const 19
i32.const 121
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 122
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 150
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 148
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_16_run
local.tee $merror
if
i32.const 19
i32.const 122
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 123
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 150
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 148
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_16_run
local.tee $merror
if
i32.const 19
i32.const 123
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 125
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 150
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 126
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 150
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $SegmentMulAny_20_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 20
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 108
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 448
i32.add
i32.store
local.get $offset
)
(func $SegmentMulAny_20_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 80
i32.add
local.set $expaux
i32.const 240
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435864
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
local.set $createloopsubcmp
i32.const 4480
local.get $signalstart
i32.add
local.set $createloopoffset
i32.const 105
local.set $createloopcounter
block
loop
local.get $createloopsubcmp
local.get $createloopoffset
call $BitElementMulAny_17_create
i32.store
local.get $createloopcounter
i32.const 1
i32.sub
local.set $createloopcounter
local.get $createloopcounter
i32.eqz
br_if 1
local.get $createloopsubcmp
i32.const 4
i32.add
local.set $createloopsubcmp
local.get $createloopoffset
i32.const 1160
i32.add
local.set $createloopoffset
br 0
end
end
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 105
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 126280
local.get $signalstart
i32.add
call $Edwards2Montgomery_13_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 106
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 127120
local.get $signalstart
i32.add
call $Montgomery2Edwards_18_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 107
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 126440
local.get $signalstart
i32.add
call $BabyAdd_10_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 108
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 126840
local.get $signalstart
i32.add
call $Multiplexor2_16_create
i32.store
;; end create component bucket
;; store bucket. Line 80
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 105
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 110
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Edwards2Montgomery_13_run
local.tee $merror
if
i32.const 20
i32.const 80
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 81
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 105
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 111
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Edwards2Montgomery_13_run
local.tee $merror
if
i32.const 20
i32.const 81
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 83
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 86
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 105
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 20
i32.const 86
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 87
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 105
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 20
i32.const 87
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 88
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 105
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 20
i32.const 88
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 89
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 105
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 20
i32.const 89
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 90
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 20
i32.const 90
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 92
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 92
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4435904
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 95
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 20
i32.const 95
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 96
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 20
i32.const 96
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 97
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 20
i32.const 97
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 98
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 20
i32.const 98
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 99
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_17_run
local.tee $merror
if
i32.const 20
i32.const 99
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 92
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 102
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 104
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 103
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 104
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 107
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 106
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 104
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_18_run
local.tee $merror
if
i32.const 20
i32.const 107
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 108
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 106
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 104
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_18_run
local.tee $merror
if
i32.const 20
i32.const 108
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 112
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 107
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 106
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 20
i32.const 112
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 113
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 107
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 106
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 20
i32.const 113
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 114
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 107
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 110
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(PREFIX_SUB)
call $Fr_neg
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 20
i32.const 114
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 115
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 107
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 111
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 20
i32.const 115
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 119
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 108
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_16_run
local.tee $merror
if
i32.const 20
i32.const 119
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 120
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 108
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 107
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_16_run
local.tee $merror
if
i32.const 20
i32.const 120
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 121
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 108
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 107
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_16_run
local.tee $merror
if
i32.const 20
i32.const 121
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 122
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 108
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 106
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_16_run
local.tee $merror
if
i32.const 20
i32.const 122
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 123
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 108
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 106
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_16_run
local.tee $merror
if
i32.const 20
i32.const 123
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 125
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 108
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 126
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 108
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $EscalarMulAny_21_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 21
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 256
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 36
i32.add
i32.store
local.get $offset
)
(func $EscalarMulAny_21_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 240
i32.add
local.set $expaux
i32.const 520
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435504
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 11120
local.get $signalstart
i32.add
call $SegmentMulAny_19_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 188800
local.get $signalstart
i32.add
call $SegmentMulAny_20_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 10720
local.get $signalstart
i32.add
call $MontgomeryDouble_14_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 10960
local.get $signalstart
i32.add
call $Montgomery2Edwards_18_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 10320
local.get $signalstart
i32.add
call $BabyAdd_10_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 316080
local.get $signalstart
i32.add
call $IsZero_12_create
i32.store
;; end create component bucket
;; store bucket. Line 136
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428144
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 137
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435864
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 144
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 256
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $IsZero_12_run
local.tee $merror
if
i32.const 21
i32.const 144
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 146
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 147
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 148
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 150
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 150
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428144
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 152
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435744
;; end of value bucket
call $Fr_copy
;; end of store bucket
else
;; store bucket. Line 152
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435864
;; end of value bucket
call $Fr_copy
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 156
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 156
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 157
;; getting dest
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=8
i32.load
;; compute bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
i32.const 40
i32.mul
i32.add
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4435744
;; end of value bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
local.get $subcmp
i32.load
call_indirect $runsmap (type $_t_i32ri32)
local.tee $merror
if
i32.const 21
i32.const 157
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 156
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 162
;; getting dest
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=12
i32.load
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 256
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; value bucket
i32.const 4435984
;; end of value bucket
;; load bucket
;; value bucket
i32.const 256
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
local.get $subcmp
i32.load
call_indirect $runsmap (type $_t_i32ri32)
local.tee $merror
if
i32.const 21
i32.const 162
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 163
;; getting dest
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=12
i32.load
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 257
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; value bucket
i32.const 4436024
;; end of value bucket
;; load bucket
;; value bucket
i32.const 257
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
local.get $subcmp
i32.load
call_indirect $runsmap (type $_t_i32ri32)
local.tee $merror
if
i32.const 21
i32.const 163
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
else
;; store bucket. Line 169
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=4
i32.load
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryDouble_14_run
local.tee $merror
if
i32.const 21
i32.const 169
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 170
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=4
i32.load
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryDouble_14_run
local.tee $merror
if
i32.const 21
i32.const 170
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 172
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_18_run
local.tee $merror
if
i32.const 21
i32.const 172
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 173
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_18_run
local.tee $merror
if
i32.const 21
i32.const 173
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 175
;; getting dest
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=12
i32.load
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
local.get $subcmp
i32.load
call_indirect $runsmap (type $_t_i32ri32)
local.tee $merror
if
i32.const 21
i32.const 175
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 176
;; getting dest
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=12
i32.load
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
local.get $subcmp
i32.load
call_indirect $runsmap (type $_t_i32ri32)
local.tee $merror
if
i32.const 21
i32.const 176
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 179
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=0
i32.load
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 21
i32.const 179
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 180
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=0
i32.load
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 21
i32.const 180
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 185
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=0
i32.load
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 21
i32.const 185
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 186
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=0
i32.load
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 21
i32.const 186
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 150
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 194
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 4428064
;; end of value bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 195
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; value bucket
i32.const 4428064
;; end of value bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $MultiMux3_22_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 22
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 19
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $MultiMux3_22_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 80
i32.add
local.set $expaux
i32.const 480
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428144
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 38
;; getting dest
;; value bucket
i32.const 37
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 19
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 18
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 40
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 40
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428144
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 42
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 21
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; compute bucket
local.get $expaux
i32.const 200
i32.add
;; compute bucket
local.get $expaux
i32.const 240
i32.add
;; compute bucket
local.get $expaux
i32.const 280
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 7
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 6
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 280
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 5
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 240
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 200
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 3
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 37
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 43
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 23
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 6
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 19
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 44
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 25
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 5
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 18
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 45
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 27
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 47
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 29
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 3
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 37
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 48
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 31
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 19
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 49
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 33
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 18
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 50
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 35
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 52
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 21
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 23
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 25
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 27
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 20
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 29
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 31
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 33
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 35
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 40
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $WindowMulFix_23_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 23
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 5
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 44
i32.add
i32.store
local.get $offset
)
(func $WindowMulFix_23_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 0
i32.add
local.set $expaux
i32.const 80
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 2280
local.get $signalstart
i32.add
call $MultiMux3_22_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 2040
local.get $signalstart
i32.add
call $MontgomeryDouble_14_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 360
local.get $signalstart
i32.add
call $MontgomeryAdd_15_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 640
local.get $signalstart
i32.add
call $MontgomeryAdd_15_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 920
local.get $signalstart
i32.add
call $MontgomeryAdd_15_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 1200
local.get $signalstart
i32.add
call $MontgomeryAdd_15_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 1480
local.get $signalstart
i32.add
call $MontgomeryAdd_15_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 1760
local.get $signalstart
i32.add
call $MontgomeryAdd_15_create
i32.store
;; end create component bucket
;; store bucket. Line 56
;; getting dest
;; value bucket
i32.const 18
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 56
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 57
;; getting dest
;; value bucket
i32.const 19
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 57
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 58
;; getting dest
;; value bucket
i32.const 20
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 58
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 70
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 70
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 71
;; getting dest
;; value bucket
i32.const 10
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 71
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 74
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryDouble_14_run
local.tee $merror
if
i32.const 23
i32.const 74
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 75
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryDouble_14_run
local.tee $merror
if
i32.const 23
i32.const 75
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 76
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 76
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 77
;; getting dest
;; value bucket
i32.const 11
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 77
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 80
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 80
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 81
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 81
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 82
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 82
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 83
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 83
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 84
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 84
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 85
;; getting dest
;; value bucket
i32.const 12
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 85
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 88
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 88
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 89
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 89
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 90
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 90
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 91
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 91
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 92
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 92
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 93
;; getting dest
;; value bucket
i32.const 13
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 93
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 96
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 96
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 97
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 97
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 98
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 98
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 99
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 99
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 100
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 100
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 101
;; getting dest
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 101
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 104
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 104
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 105
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 105
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 106
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 106
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 107
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 107
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 108
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 108
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 109
;; getting dest
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 109
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 112
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 112
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 113
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 113
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 114
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 114
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 115
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 115
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 116
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 116
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 117
;; getting dest
;; value bucket
i32.const 16
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 117
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 120
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 120
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 121
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 121
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 122
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 122
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 123
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 23
i32.const 123
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 124
;; getting dest
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 124
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 125
;; getting dest
;; value bucket
i32.const 17
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMux3_22_run
local.tee $merror
if
i32.const 23
i32.const 125
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 127
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 128
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 130
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 131
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $SegmentMulFix_24_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 24
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 251
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 1028
i32.add
i32.store
local.get $offset
)
(func $SegmentMulFix_24_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 120
i32.add
local.set $expaux
i32.const 280
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4434624
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 57480
local.get $signalstart
i32.add
call $Edwards2Montgomery_13_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
local.set $createloopsubcmp
i32.const 57800
local.get $signalstart
i32.add
local.set $createloopoffset
i32.const 83
local.set $createloopcounter
block
loop
local.get $createloopsubcmp
local.get $createloopoffset
call $WindowMulFix_23_create
i32.store
local.get $createloopcounter
i32.const 1
i32.sub
local.set $createloopcounter
local.get $createloopcounter
i32.eqz
br_if 1
local.get $createloopsubcmp
i32.const 4
i32.add
local.set $createloopsubcmp
local.get $createloopoffset
i32.const 3800
i32.add
local.set $createloopoffset
br 0
end
end
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 84
;; end of value bucket
i32.const 4
i32.mul
i32.add
local.set $createloopsubcmp
i32.const 10200
local.get $signalstart
i32.add
local.set $createloopoffset
i32.const 83
local.set $createloopcounter
block
loop
local.get $createloopsubcmp
local.get $createloopoffset
call $MontgomeryAdd_15_create
i32.store
local.get $createloopcounter
i32.const 1
i32.sub
local.set $createloopcounter
local.get $createloopcounter
i32.eqz
br_if 1
local.get $createloopsubcmp
i32.const 4
i32.add
local.set $createloopsubcmp
local.get $createloopoffset
i32.const 280
i32.add
local.set $createloopoffset
br 0
end
end
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 167
;; end of value bucket
i32.const 4
i32.mul
i32.add
local.set $createloopsubcmp
i32.const 33840
local.get $signalstart
i32.add
local.set $createloopoffset
i32.const 83
local.set $createloopcounter
block
loop
local.get $createloopsubcmp
local.get $createloopoffset
call $MontgomeryAdd_15_create
i32.store
local.get $createloopcounter
i32.const 1
i32.sub
local.set $createloopcounter
local.get $createloopcounter
i32.eqz
br_if 1
local.get $createloopsubcmp
i32.const 4
i32.add
local.set $createloopsubcmp
local.get $createloopoffset
i32.const 280
i32.add
local.set $createloopoffset
br 0
end
end
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 250
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 57240
local.get $signalstart
i32.add
call $MontgomeryDouble_14_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 251
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 57640
local.get $signalstart
i32.add
call $Montgomery2Edwards_18_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 252
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 57080
local.get $signalstart
i32.add
call $Montgomery2Edwards_18_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 253
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 33440
local.get $signalstart
i32.add
call $BabyAdd_10_create
i32.store
;; end create component bucket
;; store bucket. Line 150
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 151
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 156
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 253
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Edwards2Montgomery_13_run
local.tee $merror
if
i32.const 24
i32.const 156
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 157
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 254
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Edwards2Montgomery_13_run
local.tee $merror
if
i32.const 24
i32.const 157
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 166
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 166
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4434624
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 170
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $WindowMulFix_23_run
local.tee $merror
if
i32.const 24
i32.const 170
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 171
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $WindowMulFix_23_run
local.tee $merror
if
i32.const 24
i32.const 171
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 172
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 167
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 24
i32.const 172
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 173
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 167
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 24
i32.const 173
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
else
;; store bucket. Line 175
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $WindowMulFix_23_run
local.tee $merror
if
i32.const 24
i32.const 175
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 176
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $WindowMulFix_23_run
local.tee $merror
if
i32.const 24
i32.const 176
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 177
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 167
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 167
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 24
i32.const 177
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 178
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 167
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 167
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 24
i32.const 178
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 180
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 180
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428224
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 181
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 3
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $WindowMulFix_23_run
local.tee $merror
if
i32.const 24
i32.const 181
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 180
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4434544
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 184
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 167
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 24
i32.const 184
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 185
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 167
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 24
i32.const 185
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
else
;; store bucket. Line 187
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 250
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 83
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryDouble_14_run
local.tee $merror
if
i32.const 24
i32.const 187
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 188
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 250
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 83
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryDouble_14_run
local.tee $merror
if
i32.const 24
i32.const 188
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 189
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 249
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 250
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 24
i32.const 189
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 190
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 249
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 250
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 24
i32.const 190
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 166
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 194
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 194
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4434624
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 197
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 84
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 250
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 24
i32.const 197
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 198
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 84
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 250
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 24
i32.const 198
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
else
;; store bucket. Line 200
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 84
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 84
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 24
i32.const 200
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 201
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 84
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 84
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 24
i32.const 201
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 203
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 84
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 24
i32.const 203
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 204
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 84
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 24
i32.const 204
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 194
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 210
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 251
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 166
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_18_run
local.tee $merror
if
i32.const 24
i32.const 210
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 211
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 251
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 166
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_18_run
local.tee $merror
if
i32.const 24
i32.const 211
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 212
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 252
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 249
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_18_run
local.tee $merror
if
i32.const 24
i32.const 212
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 213
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 252
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 249
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_18_run
local.tee $merror
if
i32.const 24
i32.const 213
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 216
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 253
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 251
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 24
i32.const 216
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 217
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 253
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 251
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 24
i32.const 217
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 218
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 253
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 252
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(PREFIX_SUB)
call $Fr_neg
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 24
i32.const 218
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 219
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 253
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 252
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 24
i32.const 219
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 221
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 253
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 222
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 253
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 224
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 83
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 225
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 83
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $SegmentMulFix_25_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 25
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 8
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 56
i32.add
i32.store
local.get $offset
)
(func $SegmentMulFix_25_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 120
i32.add
local.set $expaux
i32.const 240
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428144
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 2400
local.get $signalstart
i32.add
call $Edwards2Montgomery_13_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
local.set $createloopsubcmp
i32.const 2720
local.get $signalstart
i32.add
local.set $createloopoffset
i32.const 2
local.set $createloopcounter
block
loop
local.get $createloopsubcmp
local.get $createloopoffset
call $WindowMulFix_23_create
i32.store
local.get $createloopcounter
i32.const 1
i32.sub
local.set $createloopcounter
local.get $createloopcounter
i32.eqz
br_if 1
local.get $createloopsubcmp
i32.const 4
i32.add
local.set $createloopsubcmp
local.get $createloopoffset
i32.const 3800
i32.add
local.set $createloopoffset
br 0
end
end
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
local.set $createloopsubcmp
i32.const 480
local.get $signalstart
i32.add
local.set $createloopoffset
i32.const 2
local.set $createloopcounter
block
loop
local.get $createloopsubcmp
local.get $createloopoffset
call $MontgomeryAdd_15_create
i32.store
local.get $createloopcounter
i32.const 1
i32.sub
local.set $createloopcounter
local.get $createloopcounter
i32.eqz
br_if 1
local.get $createloopsubcmp
i32.const 4
i32.add
local.set $createloopsubcmp
local.get $createloopoffset
i32.const 280
i32.add
local.set $createloopoffset
br 0
end
end
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
local.set $createloopsubcmp
i32.const 1440
local.get $signalstart
i32.add
local.set $createloopoffset
i32.const 2
local.set $createloopcounter
block
loop
local.get $createloopsubcmp
local.get $createloopoffset
call $MontgomeryAdd_15_create
i32.store
local.get $createloopcounter
i32.const 1
i32.sub
local.set $createloopcounter
local.get $createloopcounter
i32.eqz
br_if 1
local.get $createloopsubcmp
i32.const 4
i32.add
local.set $createloopsubcmp
local.get $createloopoffset
i32.const 280
i32.add
local.set $createloopoffset
br 0
end
end
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 2160
local.get $signalstart
i32.add
call $MontgomeryDouble_14_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 8
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 2560
local.get $signalstart
i32.add
call $Montgomery2Edwards_18_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 9
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 2000
local.get $signalstart
i32.add
call $Montgomery2Edwards_18_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 10
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 1040
local.get $signalstart
i32.add
call $BabyAdd_10_create
i32.store
;; end create component bucket
;; store bucket. Line 150
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 151
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 156
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 10
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Edwards2Montgomery_13_run
local.tee $merror
if
i32.const 25
i32.const 156
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 157
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 11
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Edwards2Montgomery_13_run
local.tee $merror
if
i32.const 25
i32.const 157
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 166
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 166
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428144
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 170
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $WindowMulFix_23_run
local.tee $merror
if
i32.const 25
i32.const 170
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 171
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $WindowMulFix_23_run
local.tee $merror
if
i32.const 25
i32.const 171
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 172
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 25
i32.const 172
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 173
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 25
i32.const 173
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
else
;; store bucket. Line 175
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $WindowMulFix_23_run
local.tee $merror
if
i32.const 25
i32.const 175
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 176
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $WindowMulFix_23_run
local.tee $merror
if
i32.const 25
i32.const 176
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 177
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 25
i32.const 177
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 178
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 25
i32.const 178
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 180
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 180
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428224
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 181
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 3
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $WindowMulFix_23_run
local.tee $merror
if
i32.const 25
i32.const 181
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 180
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 184
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 25
i32.const 184
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 185
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 25
i32.const 185
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
else
;; store bucket. Line 187
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryDouble_14_run
local.tee $merror
if
i32.const 25
i32.const 187
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 188
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryDouble_14_run
local.tee $merror
if
i32.const 25
i32.const 188
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 189
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 25
i32.const 189
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 190
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 25
i32.const 190
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 166
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 194
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 194
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428144
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 197
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 25
i32.const 197
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 198
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 25
i32.const 198
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
else
;; store bucket. Line 200
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 25
i32.const 200
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 201
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 25
i32.const 201
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 203
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 3
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 25
i32.const 203
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 204
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 3
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_15_run
local.tee $merror
if
i32.const 25
i32.const 204
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 194
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 210
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 8
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_18_run
local.tee $merror
if
i32.const 25
i32.const 210
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 211
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 8
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_18_run
local.tee $merror
if
i32.const 25
i32.const 211
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 212
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 9
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_18_run
local.tee $merror
if
i32.const 25
i32.const 212
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 213
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 9
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_18_run
local.tee $merror
if
i32.const 25
i32.const 213
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 216
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 10
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 8
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 25
i32.const 216
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 217
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 10
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 8
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 25
i32.const 217
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 218
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 10
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 9
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(PREFIX_SUB)
call $Fr_neg
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 25
i32.const 218
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 219
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 10
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 9
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 25
i32.const 219
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 221
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 10
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 222
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 10
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 224
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 225
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $EscalarMulFix_26_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 26
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 253
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 28
i32.add
i32.store
local.get $offset
)
(func $EscalarMulFix_26_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 360
i32.add
local.set $expaux
i32.const 560
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435984
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4436024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435264
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 10760
local.get $signalstart
i32.add
call $SegmentMulFix_24_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 383960
local.get $signalstart
i32.add
call $SegmentMulFix_25_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 10600
local.get $signalstart
i32.add
call $Montgomery2Edwards_18_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 10200
local.get $signalstart
i32.add
call $BabyAdd_10_create
i32.store
;; end create component bucket
;; store bucket. Line 239
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428144
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 240
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428304
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 247
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 248
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 249
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 250
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 252
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 252
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428144
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 254
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4436064
;; end of value bucket
call $Fr_copy
;; end of store bucket
else
;; store bucket. Line 254
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428304
;; end of value bucket
call $Fr_copy
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 255
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428224
;; end of value bucket
;; OP(INT_DIV)
call $Fr_idiv
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 259
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 259
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 260
;; getting dest
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=8
i32.load
;; compute bucket
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
i32.const 40
i32.mul
i32.add
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4436064
;; end of value bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
local.get $subcmp
i32.load
call_indirect $runsmap (type $_t_i32ri32)
local.tee $merror
if
i32.const 26
i32.const 260
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 259
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 263
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 263
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428224
;; end of value bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 264
;; getting dest
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=8
i32.load
;; compute bucket
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
i32.const 40
i32.mul
i32.add
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
local.get $subcmp
i32.load
call_indirect $runsmap (type $_t_i32ri32)
local.tee $merror
if
i32.const 26
i32.const 264
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 263
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 268
;; getting dest
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=12
i32.load
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; value bucket
i32.const 4435984
;; end of value bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
local.get $subcmp
i32.load
call_indirect $runsmap (type $_t_i32ri32)
local.tee $merror
if
i32.const 26
i32.const 268
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 269
;; getting dest
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=12
i32.load
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; value bucket
i32.const 4436024
;; end of value bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
local.get $subcmp
i32.load
call_indirect $runsmap (type $_t_i32ri32)
local.tee $merror
if
i32.const 26
i32.const 269
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
else
;; store bucket. Line 274
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=4
i32.load
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_18_run
local.tee $merror
if
i32.const 26
i32.const 274
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 275
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=4
i32.load
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_18_run
local.tee $merror
if
i32.const 26
i32.const 275
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 277
;; getting dest
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=12
i32.load
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
local.get $subcmp
i32.load
call_indirect $runsmap (type $_t_i32ri32)
local.tee $merror
if
i32.const 26
i32.const 277
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 278
;; getting dest
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=12
i32.load
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
local.get $subcmp
i32.load
call_indirect $runsmap (type $_t_i32ri32)
local.tee $merror
if
i32.const 26
i32.const 278
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 281
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=0
i32.load
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 26
i32.const 281
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 282
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=0
i32.load
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 26
i32.const 282
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 287
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=0
i32.load
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 26
i32.const 287
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 288
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=4420032
i32.load offset=0
i32.load
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 26
i32.const 288
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 252
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 296
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 297
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $ForceEqualIfEnabled_27_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 27
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 3
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 16
i32.add
i32.store
local.get $offset
)
(func $ForceEqualIfEnabled_27_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 0
i32.add
local.set $expaux
i32.const 240
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 120
local.get $signalstart
i32.add
call $IsZero_12_create
i32.store
;; end create component bucket
;; store bucket. Line 54
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $IsZero_12_run
local.tee $merror
if
i32.const 27
i32.const 54
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 4428064
;; end of value bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 27
i32.const 56
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $EdDSAMiMCVerifier_28_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 28
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 7
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 64
i32.add
i32.store
local.get $offset
)
(func $EdDSAMiMCVerifier_28_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 120
i32.add
local.set $expaux
i32.const 240
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 859240
local.get $signalstart
i32.add
call $Num2Bits_2_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 680
local.get $signalstart
i32.add
call $CompConstant_4_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 74920
local.get $signalstart
i32.add
call $MultiMiMC7_5_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 23600
local.get $signalstart
i32.add
call $Num2Bits_strict_9_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 21440
local.get $signalstart
i32.add
call $BabyDbl_11_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 22000
local.get $signalstart
i32.add
call $BabyDbl_11_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 22560
local.get $signalstart
i32.add
call $BabyDbl_11_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 148640
local.get $signalstart
i32.add
call $IsZero_12_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 8
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 148760
local.get $signalstart
i32.add
call $EscalarMulAny_21_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 9
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 280
local.get $signalstart
i32.add
call $BabyAdd_10_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 10
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 464960
local.get $signalstart
i32.add
call $EscalarMulFix_26_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 11
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 23120
local.get $signalstart
i32.add
call $ForceEqualIfEnabled_27_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 12
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 23360
local.get $signalstart
i32.add
call $ForceEqualIfEnabled_27_create
i32.store
;; end create component bucket
;; store bucket. Line 39
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 44
;; getting dest
;; value bucket
i32.const 253
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Num2Bits_2_run
local.tee $merror
if
i32.const 28
i32.const 44
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 48
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 48
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4435264
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 49
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $CompConstant_4_run
local.tee $merror
if
i32.const 28
i32.const 49
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 48
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 51
;; getting dest
;; value bucket
i32.const 254
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $CompConstant_4_run
local.tee $merror
if
i32.const 28
i32.const 51
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 28
i32.const 52
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; store bucket. Line 57
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_5_run
local.tee $merror
if
i32.const 28
i32.const 57
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 58
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_5_run
local.tee $merror
if
i32.const 28
i32.const 58
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 59
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_5_run
local.tee $merror
if
i32.const 28
i32.const 59
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 60
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_5_run
local.tee $merror
if
i32.const 28
i32.const 60
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 61
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_5_run
local.tee $merror
if
i32.const 28
i32.const 61
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 62
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_5_run
local.tee $merror
if
i32.const 28
i32.const 62
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 65
;; getting dest
;; value bucket
i32.const 254
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Num2Bits_strict_9_run
local.tee $merror
if
i32.const 28
i32.const 65
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 72
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyDbl_11_run
local.tee $merror
if
i32.const 28
i32.const 72
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 73
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyDbl_11_run
local.tee $merror
if
i32.const 28
i32.const 73
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 75
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyDbl_11_run
local.tee $merror
if
i32.const 28
i32.const 75
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 76
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyDbl_11_run
local.tee $merror
if
i32.const 28
i32.const 76
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 78
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyDbl_11_run
local.tee $merror
if
i32.const 28
i32.const 78
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 79
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyDbl_11_run
local.tee $merror
if
i32.const 28
i32.const 79
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 83
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $IsZero_12_run
local.tee $merror
if
i32.const 28
i32.const 83
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 7
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 28
i32.const 84
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; store bucket. Line 87
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 87
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4435504
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 88
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 8
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $EscalarMulAny_21_run
local.tee $merror
if
i32.const 28
i32.const 88
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 87
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 90
;; getting dest
;; value bucket
i32.const 256
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 8
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $EscalarMulAny_21_run
local.tee $merror
if
i32.const 28
i32.const 90
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 91
;; getting dest
;; value bucket
i32.const 257
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 8
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 6
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $EscalarMulAny_21_run
local.tee $merror
if
i32.const 28
i32.const 91
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 97
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 9
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 28
i32.const 97
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 98
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 9
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 28
i32.const 98
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 99
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 9
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 8
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 28
i32.const 99
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 100
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 9
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 8
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_10_run
local.tee $merror
if
i32.const 28
i32.const 100
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 104
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4435984
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 104
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4436024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 109
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 109
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4435264
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 110
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 10
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $EscalarMulFix_26_run
local.tee $merror
if
i32.const 28
i32.const 110
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 109
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 116
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 11
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $ForceEqualIfEnabled_27_run
local.tee $merror
if
i32.const 28
i32.const 116
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 117
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 11
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 10
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $ForceEqualIfEnabled_27_run
local.tee $merror
if
i32.const 28
i32.const 117
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 118
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 11
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 9
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $ForceEqualIfEnabled_27_run
local.tee $merror
if
i32.const 28
i32.const 118
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 121
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 12
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $ForceEqualIfEnabled_27_run
local.tee $merror
if
i32.const 28
i32.const 121
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 122
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 12
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 10
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $ForceEqualIfEnabled_27_run
local.tee $merror
if
i32.const 28
i32.const 122
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 123
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 12
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 9
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $ForceEqualIfEnabled_27_run
local.tee $merror
if
i32.const 28
i32.const 123
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $MultiMiMC7_29_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 29
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 3
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 20
i32.add
i32.store
local.get $offset
)
(func $MultiMiMC7_29_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 120
i32.add
local.set $expaux
i32.const 280
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428144
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4427984
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
local.set $createloopsubcmp
i32.const 280
local.get $signalstart
i32.add
local.set $createloopoffset
i32.const 2
local.set $createloopcounter
block
loop
local.get $createloopsubcmp
local.get $createloopoffset
call $MiMC7_0_create
i32.store
local.get $createloopcounter
i32.const 1
i32.sub
local.set $createloopcounter
local.get $createloopcounter
i32.eqz
br_if 1
local.get $createloopsubcmp
i32.const 4
i32.add
local.set $createloopsubcmp
local.get $createloopoffset
i32.const 14640
i32.add
local.set $createloopoffset
br 0
end
end
;; end create component bucket
;; store bucket. Line 147
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 148
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 148
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428144
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 150
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MiMC7_0_run
local.tee $merror
if
i32.const 29
i32.const 150
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 151
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MiMC7_0_run
local.tee $merror
if
i32.const 29
i32.const 151
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 152
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 148
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 155
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $Main_30_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 4291088
i32.load
local.set $offset
local.get $offset
i32.const 30
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 54
i32.store offset=8
i32.const 4291088
local.get $offset
i32.const 84
i32.add
i32.store
local.get $offset
)
(func $Main_30_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 760
i32.add
local.set $expaux
i32.const 1040
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428224
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428144
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
local.set $createloopsubcmp
i32.const 651520
local.get $signalstart
i32.add
local.set $createloopoffset
i32.const 4
local.set $createloopcounter
block
loop
local.get $createloopsubcmp
local.get $createloopoffset
call $EdDSAMiMCVerifier_28_create
i32.store
local.get $createloopcounter
i32.const 1
i32.sub
local.set $createloopcounter
local.get $createloopcounter
i32.eqz
br_if 1
local.get $createloopsubcmp
i32.const 4
i32.add
local.set $createloopsubcmp
local.get $createloopoffset
i32.const 869400
i32.add
local.set $createloopoffset
br 0
end
end
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
local.set $createloopsubcmp
i32.const 31720
local.get $signalstart
i32.add
local.set $createloopoffset
i32.const 4
local.set $createloopcounter
block
loop
local.get $createloopsubcmp
local.get $createloopoffset
call $MultiMiMC7_1_create
i32.store
local.get $createloopcounter
i32.const 1
i32.sub
local.set $createloopcounter
local.get $createloopcounter
i32.eqz
br_if 1
local.get $createloopsubcmp
i32.const 4
i32.add
local.set $createloopsubcmp
local.get $createloopoffset
i32.const 88440
i32.add
local.set $createloopoffset
br 0
end
end
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 8
;; end of value bucket
i32.const 4
i32.mul
i32.add
local.set $createloopsubcmp
i32.const 415040
local.get $signalstart
i32.add
local.set $createloopoffset
i32.const 8
local.set $createloopcounter
block
loop
local.get $createloopsubcmp
local.get $createloopoffset
call $MultiMiMC7_29_create
i32.store
local.get $createloopcounter
i32.const 1
i32.sub
local.set $createloopcounter
local.get $createloopcounter
i32.eqz
br_if 1
local.get $createloopsubcmp
i32.const 4
i32.add
local.set $createloopsubcmp
local.get $createloopoffset
i32.const 29560
i32.add
local.set $createloopoffset
br 0
end
end
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 16
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 2160
local.get $signalstart
i32.add
call $MultiMiMC7_29_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 17
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 385480
local.get $signalstart
i32.add
call $MultiMiMC7_29_create
i32.store
;; end create component bucket
;; store bucket. Line 7
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428304
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 8
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 33
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4436104
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 33
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4436144
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 33
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4436184
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 33
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4436224
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 33
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4436264
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 33
;; getting dest
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4436304
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 33
;; getting dest
;; value bucket
i32.const 10
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4436344
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 33
;; getting dest
;; value bucket
i32.const 11
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4436384
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 33
;; getting dest
;; value bucket
i32.const 12
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4436424
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 33
;; getting dest
;; value bucket
i32.const 13
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4436464
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 51
;; getting dest
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 51
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428304
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 54
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 6
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_1_run
local.tee $merror
if
i32.const 30
i32.const 54
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 55
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 10
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_1_run
local.tee $merror
if
i32.const 30
i32.const 55
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 56
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 14
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_1_run
local.tee $merror
if
i32.const 30
i32.const 56
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 57
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 18
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_1_run
local.tee $merror
if
i32.const 30
i32.const 57
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 58
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_1_run
local.tee $merror
if
i32.const 30
i32.const 58
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 59
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 22
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_1_run
local.tee $merror
if
i32.const 30
i32.const 59
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 60
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; value bucket
i32.const 4428464
;; end of value bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_1_run
local.tee $merror
if
i32.const 30
i32.const 60
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 64
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $EdDSAMiMCVerifier_28_run
local.tee $merror
if
i32.const 30
i32.const 64
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 65
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 6
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $EdDSAMiMCVerifier_28_run
local.tee $merror
if
i32.const 30
i32.const 65
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 66
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 10
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $EdDSAMiMCVerifier_28_run
local.tee $merror
if
i32.const 30
i32.const 66
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 67
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 34
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $EdDSAMiMCVerifier_28_run
local.tee $merror
if
i32.const 30
i32.const 67
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 68
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 26
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $EdDSAMiMCVerifier_28_run
local.tee $merror
if
i32.const 30
i32.const 68
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 69
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 30
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $EdDSAMiMCVerifier_28_run
local.tee $merror
if
i32.const 30
i32.const 69
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 70
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $EdDSAMiMCVerifier_28_run
local.tee $merror
if
i32.const 30
i32.const 70
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 73
;; getting dest
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 73
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428144
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 75
;; getting dest
;; value bucket
i32.const 16
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
else
;; store bucket. Line 75
;; getting dest
;; value bucket
i32.const 16
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 75
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 38
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 46
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; load bucket
;; value bucket
i32.const 16
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 38
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_29_run
local.tee $merror
if
i32.const 30
i32.const 75
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 76
;; getting dest
;; value bucket
i32.const 17
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
else
;; store bucket. Line 76
;; getting dest
;; value bucket
i32.const 17
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
end
;; end of branch bucket
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428024
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 76
;; getting dest
;; value bucket
i32.const 18
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
else
;; store bucket. Line 76
;; getting dest
;; value bucket
i32.const 18
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 76
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 18
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 46
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 38
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 17
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_29_run
local.tee $merror
if
i32.const 30
i32.const 76
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 77
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; value bucket
i32.const 4428144
;; end of value bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_29_run
local.tee $merror
if
i32.const 30
i32.const 77
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 73
;; getting dest
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; value bucket
i32.const 8
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 30
i32.const 79
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; store bucket. Line 51
;; getting dest
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 91
;; getting dest
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 91
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 93
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 16
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 4436184
;; end of value bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_29_run
local.tee $merror
if
i32.const 30
i32.const 93
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 94
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 16
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; value bucket
i32.const 4436184
;; end of value bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; value bucket
i32.const 4436184
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_29_run
local.tee $merror
if
i32.const 30
i32.const 94
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 95
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 16
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; value bucket
i32.const 4428144
;; end of value bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_29_run
local.tee $merror
if
i32.const 30
i32.const 95
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 91
;; getting dest
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 16
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 30
i32.const 97
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; store bucket. Line 101
;; getting dest
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428024
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 101
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; branch bucket
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_isTrue
if
;; store bucket. Line 103
;; getting dest
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
else
;; store bucket. Line 103
;; getting dest
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 17
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 103
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 17
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; load bucket
;; value bucket
i32.const 15
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_29_run
local.tee $merror
if
i32.const 30
i32.const 103
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; branch bucket
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_isTrue
if
;; store bucket. Line 104
;; getting dest
;; value bucket
i32.const 16
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
else
;; store bucket. Line 104
;; getting dest
;; value bucket
i32.const 16
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 17
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
end
;; end of branch bucket
;; branch bucket
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_isTrue
if
;; store bucket. Line 104
;; getting dest
;; value bucket
i32.const 17
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
else
;; store bucket. Line 104
;; getting dest
;; value bucket
i32.const 17
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 4428064
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 17
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 104
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 17
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 17
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 16
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_29_run
local.tee $merror
if
i32.const 30
i32.const 104
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 105
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 17
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; value bucket
i32.const 4428144
;; end of value bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MultiMiMC7_29_run
local.tee $merror
if
i32.const 30
i32.const 105
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 101
;; getting dest
;; value bucket
i32.const 14
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 4428064
;; end of value bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(table $runsmap 31 31 funcref)
(elem $runsmap (i32.const 0)
 $MiMC7_0_run
 $MultiMiMC7_1_run
 $Num2Bits_2_run
 $Num2Bits_3_run
 $CompConstant_4_run
 $MultiMiMC7_5_run
 $CompConstant_6_run
 $AliasCheck_7_run
 $Num2Bits_8_run
 $Num2Bits_strict_9_run
 $BabyAdd_10_run
 $BabyDbl_11_run
 $IsZero_12_run
 $Edwards2Montgomery_13_run
 $MontgomeryDouble_14_run
 $MontgomeryAdd_15_run
 $Multiplexor2_16_run
 $BitElementMulAny_17_run
 $Montgomery2Edwards_18_run
 $SegmentMulAny_19_run
 $SegmentMulAny_20_run
 $EscalarMulAny_21_run
 $MultiMux3_22_run
 $WindowMulFix_23_run
 $SegmentMulFix_24_run
 $SegmentMulFix_25_run
 $EscalarMulFix_26_run
 $ForceEqualIfEnabled_27_run
 $EdDSAMiMCVerifier_28_run
 $MultiMiMC7_29_run
 $Main_30_run
)
(data (i32.const 88) "\fe\00\00\00\00\00\00\00")
(data (i32.const 128) "\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
(data (i32.const 608) "\01\00\00\f0\93\f5\e1C\91p\b9yH\e83(]X\81\81\b6EP\b8)\a01\e1rNd0")
(data (i32.const 640) "\fb\ff\ffO\1c4\96\ac)\cd`\9f\95v\fc6.Fyxo\a3nf/\df\07\9a\c1w\0a\0e")
(data (i32.const 672) "\a7m!\aeE\e6\b8\1b\e3Y\5c\e3\b1:\feS\85\80\bbS=\83I\8c\a5DN\7f\b1\d0\16\02")
(data (i32.const 704) "@\00\bf\b4\e1\d8\94^\b8\b6\fb\1c\be\9cH*\ed\cf\9f\a1d\c6<\89|e\cc\7fKY\f8\0c")
(data (i32.const 736) "\fb\ff\ffO\1c4\96\ac)\cd`\9f\95v\fc6.Fyxo\a3nf/\df\07\9a\c1w\0a\0e")
(data (i32.const 768) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
(data (i32.const 800) "\00\00\00\f8\c9\fa\f0\a1H\b8\dc<$\f4\19\94.\ac\c0@\db\22(\dc\14\d0\98p9'2\18")
(data (i32.const 832) "\01\00\00\f8\c9\fa\f0\a1H\b8\dc<$\f4\19\94.\ac\c0@\db\22(\dc\14\d0\98p9'2\18")
(data (i32.const 864) "\e6\ff\ff\9f\f9\0e\0d\1b?\91*\a3\a3h\ba\ea\89\06\dd\d8v\eb\d8G\c3\bb\f5 U\08\d0\15")
(data (i32.const 896) "?Y\1f>\14\09\97\9b\87\84>\83\d2\85\15\18h[\04\85\9b\02\1a\13.\e7D\06\03\00\00\00")
(data (i32.const 928) "\9c=\d1\80Usnc\d6\ffE$t\f3+\a2\d8\03\b2\1e\c0*EV\e7\f9c)\94\ef`\18")
(data (i32.const 960) "\a0\ac\0f\1f\8a\84\cb\cdCB\9fA\e9\c2\0a\0c\b4-\82\c2M\01\8d\09\97s\22\83\01\00\00\00")
(data (i32.const 1920) "\00\00\00\f8\c9\fa\f0\a1H\b8\dc<$\f4\19\94.\ac\c0@\db\22(\dc\14\d0\98p9'2\18")
(data (i32.const 0) "\18\b2\43\00")
(data (i32.const 1952) "\01\00\00\f0\93\f5\e1\43\91\70\b9\79\48\e8\33\28\5d\58\81\81\b6\45\50\b8\29\a0\31\e1\72\4e\64\30")
(data (i32.const 1984) "\00\00\00\00\00\00\00\80")
(data (i32.const 2032) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\22\78\11\96\45\a9\cb\03\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\3d\a3\eb\fd\19\c0\0e\9f\1b\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\42\f9\2e\57\c5\61\a1\20\0f\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\68\81\5b\9b\8b\bf\79\ac\04\00\00\00\01\00\00\00\69\69\b1\a2\7e\fe\13\81\17\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\82\41\02\86\4c\0e\64\af\23\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\8a\a1\eb\fd\19\bf\0e\9f\1f\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\a8\3a\ca\45\b4\50\03\45\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\b1\5d\04\fe\fb\eb\12\d0\0b\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\b8\fe\a9\7b\b2\cf\08\5b\2f\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\c3\98\bf\e1\9f\fd\fc\d0\02\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\de\93\a2\2b\4e\a5\e7\81\05\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f4\79\be\21\e4\e0\f8\b8\27\00\00\00\08\00\00\00\f5\fa\2e\57\c5\62\a1\20\13\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\fa\a5\4a\23\ae\3e\b6\21\06\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\fe\5b\04\fe\fb\ea\12\d0\07\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
(data (i32.const 161928) "\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
(data (i32.const 4420032) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\3c\72\43\00\4c\72\43\00\00\00\00\00\00\00\00\00\00\00\00\00\5c\72\43\00\6c\72\43\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
(data (i32.const 4420156) "\7c\72\43\00\80\72\43\00\84\72\43\00\88\72\43\00\8c\72\43\00\90\72\43\00\94\72\43\00\98\72\43\00\9c\72\43\00\a0\72\43\00\a4\72\43\00\a8\72\43\00\ac\72\43\00\b0\72\43\00\b4\72\43\00\b8\72\43\00")
(data (i32.const 4420220) "\00\00\00\00\50\00\00\00\a0\00\00\00\c0\17\00\00\00\00\00\00\50\00\00\00\a0\00\00\00\30\11\00\00\00\00\00\00\50\00\00\00\a0\00\00\00\88\27\00\00\00\00\00\00\50\00\00\00\a0\00\00\00\90\01\00\00")
(data (i32.const 4420544) "Error in template MiMC7_0\00")
(data (i32.const 4420784) "Error in template MultiMiMC7_1\00")
(data (i32.const 4421024) "Error in template Num2Bits_2\00")
(data (i32.const 4421264) "Error in template Num2Bits_3\00")
(data (i32.const 4421504) "Error in template CompConstant_4\00")
(data (i32.const 4421744) "Error in template MultiMiMC7_5\00")
(data (i32.const 4421984) "Error in template CompConstant_6\00")
(data (i32.const 4422224) "Error in template AliasCheck_7\00")
(data (i32.const 4422464) "Error in template Num2Bits_8\00")
(data (i32.const 4422704) "Error in template Num2Bits_strict_9\00")
(data (i32.const 4422944) "Error in template BabyAdd_10\00")
(data (i32.const 4423184) "Error in template BabyDbl_11\00")
(data (i32.const 4423424) "Error in template IsZero_12\00")
(data (i32.const 4423664) "Error in template Edwards2Montgomery_13\00")
(data (i32.const 4423904) "Error in template MontgomeryDouble_14\00")
(data (i32.const 4424144) "Error in template MontgomeryAdd_15\00")
(data (i32.const 4424384) "Error in template Multiplexor2_16\00")
(data (i32.const 4424624) "Error in template BitElementMulAny_17\00")
(data (i32.const 4424864) "Error in template Montgomery2Edwards_18\00")
(data (i32.const 4425104) "Error in template SegmentMulAny_19\00")
(data (i32.const 4425344) "Error in template SegmentMulAny_20\00")
(data (i32.const 4425584) "Error in template EscalarMulAny_21\00")
(data (i32.const 4425824) "Error in template MultiMux3_22\00")
(data (i32.const 4426064) "Error in template WindowMulFix_23\00")
(data (i32.const 4426304) "Error in template SegmentMulFix_24\00")
(data (i32.const 4426544) "Error in template SegmentMulFix_25\00")
(data (i32.const 4426784) "Error in template EscalarMulFix_26\00")
(data (i32.const 4427024) "Error in template ForceEqualIfEnabled_27\00")
(data (i32.const 4427264) "Error in template EdDSAMiMCVerifier_28\00")
(data (i32.const 4427504) "Error in template MultiMiMC7_29\00")
(data (i32.const 4427744) "Error in template Main_30\00")
(data (i32.const 4427984) "\5b\00\00\00\00\00\00\40\1f\fe\ff\0f\0a\95\71\74\0f\7f\93\4a\d3\8f\78\76\f7\f8\f8\ab\16\04\2d\b1\9c\11\c2\e1\26\9a\88\13\00\00\00\00\00\00\00\40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\40\fb\ff\ff\4f\1c\34\96\ac\29\cd\60\9f\95\76\fc\36\2e\46\79\78\6f\a3\6e\66\2f\df\07\9a\c1\77\0a\0e\00\00\00\00\00\00\00\C0\9e\7a\10\5a\16\fe\fa\95\e3\3b\eb\a2\47\8c\ef\29\da\47\f6\94\63\e6\dd\26\86\84\d2\b9\3e\d9\99\17\02\00\00\00\00\00\00\40\f6\ff\ff\9f\38\68\2c\59\53\9a\c1\3e\2b\ed\f8\6d\5c\8c\f2\f0\de\46\dd\cc\5e\be\0f\34\83\ef\14\1c\00\00\00\00\00\00\00\C0\dc\bd\99\3c\30\ae\eb\27\60\76\42\d7\85\af\19\e1\f8\87\4d\04\f0\33\a3\ba\62\aa\47\b5\40\e0\98\08\03\00\00\00\00\00\00\40\f1\ff\ff\ef\54\9c\c2\05\7d\67\22\de\c0\63\f5\a4\8a\d2\6b\69\4e\ea\4b\33\8e\9d\17\ce\44\67\1f\2a\00\00\00\00\00\00\00\C0\e6\bb\e2\a1\b4\76\17\04\cd\b3\ae\9f\8c\5a\51\6a\d8\e6\8c\4e\7f\0a\92\74\92\23\32\90\ca\b9\97\04\04\00\00\00\00\00\00\40\eb\ff\ff\4f\dd\da\76\6e\15\c4\c9\03\0e\f2\bd\b3\5b\c0\63\60\07\48\6a\e1\93\dc\ed\86\93\90\c5\07\00\00\00\00\00\00\00\C0\e7\b1\e3\89\d7\6f\24\27\d2\21\21\7c\ac\da\7e\5e\05\2d\e6\97\de\7b\f9\7c\ce\58\b7\9a\5c\4c\38\1f\05\00\00\00\00\00\00\40\e6\ff\ff\9f\f9\0e\0d\1b\3f\91\2a\a3\a3\68\ba\ea\89\06\dd\d8\76\eb\d8\47\c3\bb\f5\20\55\08\d0\15\00\00\00\00\00\00\00\C0\52\04\58\78\94\eb\0f\12\4f\a6\b8\71\6a\0e\80\f9\1d\fa\1d\12\e1\d5\5e\5c\d3\35\d6\21\f8\40\86\09\06\00\00\00\00\00\00\40\e1\ff\ff\ef\15\43\a3\c7\68\5e\8b\42\39\df\b6\21\b8\4c\56\51\e6\8e\47\ae\f2\9a\fd\ba\16\80\da\23\00\00\00\00\00\00\00\C0\06\e7\56\10\d5\d0\69\4b\82\75\b9\c5\9b\61\50\73\a9\9d\c0\0f\ba\29\67\16\da\bb\c3\26\1d\c2\82\11\07\00\00\00\00\00\00\40\db\ff\ff\4f\9e\81\57\30\01\bb\32\68\86\6d\7f\30\89\3a\4e\48\9f\ec\65\5c\f8\d9\d3\73\65\a9\80\01\00\00\00\00\00\00\00\C0\48\bc\6a\4e\0f\18\d8\8c\69\56\5a\db\9c\28\f1\ae\7c\48\ee\58\18\62\b3\d9\62\26\7e\1f\6c\81\5b\2d\08\00\00\00\00\00\00\40\d6\ff\ff\9f\ba\b5\ed\dc\2a\88\93\07\1c\e4\7b\67\b7\80\c7\c0\0e\90\d4\c2\27\b9\db\0d\27\21\8b\0f\00\00\00\00\00\00\00\C0\6d\ad\f5\af\3f\5e\87\9b\b2\33\1a\ea\11\0f\c7\08\c6\cb\ba\10\ed\70\66\86\64\e0\d7\b8\26\b9\01\14\09\00\00\00\00\00\00\40\d1\ff\ff\ef\d6\e9\83\89\54\55\f4\a6\b1\5a\78\9e\e5\c6\40\39\7e\33\43\29\57\98\e3\a7\e8\98\95\1d\00\00\00\00\00\00\00\C0\73\2e\5c\93\8d\75\e3\8d\e1\82\3f\04\27\22\7a\2a\7d\67\bc\a3\68\f9\12\c8\93\74\6b\6c\4b\bc\fb\25\0a\00\00\00\00\00\00\40\cc\ff\ff\3f\f3\1d\1a\36\7e\22\55\46\47\d1\74\d5\13\0d\ba\b1\ed\d6\b1\8f\86\77\eb\41\aa\10\a0\2b\00\00\00\00\00\00\00\C0\cb\e6\40\5b\28\e5\e7\6a\be\94\c3\4f\b4\ec\3b\ca\41\fc\99\7f\42\06\be\c4\0a\07\4f\65\b3\c6\04\1f\0b\00\00\00\00\00\00\40\c6\ff\ff\9f\7b\5c\ce\9e\16\7f\fc\6b\94\5f\3d\e4\e4\fa\b1\a8\a6\34\d0\3d\8c\b6\c1\fa\f8\39\46\09\00\00\00\00\00\00\00\C0\ec\93\39\1a\03\8f\34\cc\f9\a5\ad\b9\0e\64\ed\57\83\fa\04\96\6c\61\c1\8d\34\f7\89\95\ab\8a\2a\04\0c\00\00\00\00\00\00\40\c1\ff\ff\ef\97\90\64\4b\40\4c\5d\0b\2a\d6\39\1b\13\41\2b\21\16\d8\3e\a4\bb\95\c9\94\ba\b1\50\17\00\00\00\00\00\00\00\C0\03\db\98\09\95\11\52\53\4a\64\0f\56\d8\6c\bf\b6\70\54\c5\4d\d4\98\37\b7\73\6d\d9\a7\13\bd\ea\28\0d\00\00\00\00\00\00\40\bc\ff\ff\3f\b4\c4\fa\f7\69\19\be\aa\bf\4c\36\52\41\87\a4\99\85\7b\ad\0a\eb\74\d1\2e\7c\29\5b\25\00\00\00\00\00\00\00\C0\15\6e\0a\08\50\90\ab\2c\af\6f\e2\e6\c7\43\57\26\77\3f\a9\b2\c3\1a\48\d3\4c\c2\82\36\47\98\dd\02\0e\00\00\00\00\00\00\40\b6\ff\ff\9f\3c\03\af\60\02\76\65\d0\0c\db\fe\60\12\75\9c\90\3e\d9\cb\b8\f0\b3\a7\e7\ca\52\01\03\00\00\00\00\00\00\00\C0\e2\6c\d7\34\08\ff\69\70\4c\16\d7\57\31\f9\44\f6\0b\c7\24\f8\5b\03\a2\98\ab\2d\42\70\1e\45\c5\22\0f\00\00\00\00\00\00\40\b1\ff\ff\ef\58\37\45\0d\2c\43\c6\6f\a2\51\fb\97\40\bb\15\09\ae\7c\3a\1f\20\93\af\81\8c\ca\0b\11\00\00\00\00\00\00\00\C0\a1\36\4e\4a\73\28\8e\84\67\b7\e9\e8\5f\cc\c7\ce\8e\ff\14\32\f5\37\fe\1f\72\67\a6\06\14\71\b9\2a\10\00\00\00\00\00\00\40\ac\ff\ff\3f\75\6b\db\b9\55\10\27\0f\38\c8\f7\ce\6e\01\8f\81\1d\20\a9\85\4f\72\b7\1b\4e\42\16\1f\00\00\00\00\00\00\00\C0\ba\02\57\85\66\05\b9\62\29\8a\25\ad\79\82\02\bb\5f\1f\41\58\18\b5\93\e5\87\ef\3b\55\3a\a5\cc\27\11\00\00\00\00\00\00\40\a7\ff\ff\8f\91\9f\71\66\7f\dd\87\ae\cd\3e\f4\05\9d\47\08\fa\8c\c3\17\ec\7e\51\bf\b5\0f\ba\20\2d\00\00\00\00\00\00\00\C0\99\99\a0\24\73\a0\08\fc\1b\18\2e\b9\3d\49\de\f0\2a\de\a8\a9\04\67\0b\5e\83\8d\b1\98\77\cc\84\26\12\00\00\00\00\00\00\40\a1\ff\ff\ef\19\de\25\cf\17\3a\2f\d4\1a\cd\bc\14\6e\35\00\f1\45\21\36\9a\84\90\95\6e\5e\e3\c6\0a\00\00\00\00\00\00\00\C0\a9\69\11\9f\79\af\47\b2\ca\c9\11\81\7d\1c\1a\be\60\88\cd\08\70\d5\5e\25\c9\90\34\37\7f\30\35\29\13\00\00\00\00\00\00\40\9c\ff\ff\3f\36\12\bc\7b\41\07\90\73\b0\43\b9\4b\9c\7b\79\69\b5\c4\a4\00\b4\6f\9d\08\20\5b\d1\18\00\00\00\00\00\00\00\C0\7d\14\72\de\b5\ce\2a\5a\1b\2b\ce\95\b3\12\46\1b\70\4d\41\7d\f3\b8\1d\6f\dd\0b\f4\bc\89\e3\6f\02\14\00\00\00\00\00\00\40\97\ff\ff\8f\52\46\52\28\6b\d4\f0\12\46\ba\b5\82\ca\c1\f2\e1\24\68\13\67\e3\4e\a5\a2\e1\d2\db\26\00\00\00\00\00\00\00\C0\24\5b\fb\57\23\85\b7\1c\14\35\5b\a0\14\06\71\68\b5\97\b4\21\7d\d4\2c\7d\8b\dc\21\d3\35\29\d7\0c\15\00\00\00\00\00\00\40\91\ff\ff\ef\da\84\06\91\03\31\98\38\93\48\7e\91\9b\af\ea\d8\dd\c5\31\15\e9\8d\7b\5b\30\fc\81\04\00\00\00\00\00\00\00\C0\2f\2e\45\e2\da\23\a1\7d\10\7e\9d\7a\d3\5d\6d\2a\c6\46\1b\70\d9\3d\d1\c8\fb\5d\80\b4\3e\70\a7\20\16\00\00\00\00\00\00\40\8c\ff\ff\3f\f7\b8\9c\3d\2d\fe\f8\d7\28\bf\7a\c8\c9\f5\63\51\4d\69\a0\7b\18\6d\83\f5\f1\73\8c\12\00\00\00\00\00\00\00\C0\97\f6\ad\82\83\f7\7d\60\c6\fd\a2\de\7c\3c\b0\35\a5\8a\3d\77\ff\0f\55\f4\49\09\dd\83\39\b3\8e\21\17\00\00\00\00\00\00\40\87\ff\ff\8f\13\ed\32\ea\56\cb\59\77\be\35\77\ff\f7\3b\dd\c9\bc\0c\0f\e2\47\4c\8b\8f\b3\eb\96\20\00\00\00\00\00\00\00\C0\a3\40\98\d8\fe\7e\9d\ca\29\99\ec\8e\77\72\6a\55\0c\82\28\bc\67\c1\40\3b\66\92\90\ed\b9\ca\34\0d\18\00\00\00\00\00\00\40\82\ff\ff\df\2f\21\c9\96\80\98\ba\16\54\ac\73\36\26\82\56\42\2c\b0\7d\48\77\2b\93\29\75\63\a1\2e\00\00\00\00\00\00\00\C0\80\66\8b\6f\99\7e\0f\a3\7d\ff\94\d6\98\6b\d0\d0\7d\47\7c\34\11\ab\13\50\1b\f1\86\cd\6b\78\7e\13\19\00\00\00\00\00\00\40\7c\ff\ff\3f\b8\5f\7d\ff\18\f5\61\3c\a1\3a\3c\45\f7\6f\4e\39\e5\0d\9c\f6\7c\6a\69\e2\c3\8c\47\0c\00\00\00\00\00\00\00\C0\e6\e6\85\85\d5\94\ea\f0\b5\35\93\8c\8c\b6\18\99\7b\63\4e\3a\60\72\c1\b5\66\bf\d9\6b\a0\c7\54\27\1a\00\00\00\00\00\00\40\77\ff\ff\8f\d4\93\13\ac\42\c2\c2\db\36\b1\38\7c\25\b6\c7\b1\54\b1\0a\5d\ac\49\71\7c\85\04\52\1a\00\00\00\00\00\00\00\C0\76\25\a9\87\4a\be\9b\10\10\53\ad\99\ad\eb\d0\19\c5\7d\23\40\6b\f6\ad\2d\4b\6d\41\dc\e9\d5\c9\16\1b\00\00\00\00\00\00\40\72\ff\ff\df\f0\c7\a9\58\6c\8f\23\7b\cc\27\35\b3\53\fc\40\2a\c4\54\79\c3\db\28\79\16\47\7c\5c\28\00\00\00\00\00\00\00\C0\27\53\5e\1f\24\9e\0a\9d\b7\e7\27\b0\fe\2e\77\26\53\44\30\20\33\86\f7\09\0d\8c\ce\81\88\30\40\13\1c\00\00\00\00\00\00\40\6c\ff\ff\3f\79\06\5e\c1\04\ec\ca\a0\19\b6\fd\c1\24\ea\38\21\7d\b2\97\71\e1\67\4f\cf\95\a5\02\06\00\00\00\00\00\00\00\C0\69\91\50\39\a1\dd\3f\4a\ea\2f\dc\26\cd\16\14\99\0e\18\4a\c6\d6\f5\a4\a4\1d\54\a3\a3\5d\a5\58\14\1d\00\00\00\00\00\00\40\67\ff\ff\8f\95\3a\f4\6d\2e\b9\2b\40\af\2c\fa\f8\52\30\b2\99\ec\55\06\d8\10\47\57\69\57\1d\0d\14\00\00\00\00\00\00\00\C0\32\53\7f\25\5a\ab\fa\b9\0a\b1\0b\1d\78\9c\c4\78\99\aa\70\7d\4d\23\bc\b2\1e\d0\59\67\85\a8\de\1b\1e\00\00\00\00\00\00\40\62\ff\ff\df\b1\6e\8a\1a\58\86\8c\df\44\a3\f6\2f\81\76\2b\12\5c\f9\74\3e\40\26\5f\03\19\95\17\22\00\00\00\00\00\00\00\C0\45\88\f6\64\d5\00\a4\94\91\15\69\1c\89\50\3d\eb\43\0a\6f\37\ab\fe\b3\a3\8e\19\73\3d\20\2f\65\06\1f\00\00\00\00\00\00\40\5d\ff\ff\2f\ce\a2\20\c7\81\53\ed\7e\da\19\f3\66\af\bc\a4\8a\cb\9c\e3\a4\6f\05\67\9d\da\0c\22\30\00\00\00\00\00\00\00\C0\83\b4\7f\56\64\72\c8\89\86\14\25\11\c3\60\2f\4b\e1\05\77\a0\cc\a0\cb\03\c7\14\28\ef\8e\e2\26\30\20\00\00\00\00\00\00\40\57\ff\ff\8f\56\e1\d4\2f\1a\b0\94\a4\27\a8\bb\75\80\aa\9c\81\84\fa\01\53\75\44\3d\56\29\36\c8\0d\00\00\00\00\00\00\00\C0\a5\5a\a2\84\01\b2\df\e0\45\a7\4c\f6\cb\ee\85\f3\84\54\9e\2e\e5\37\90\cf\f9\1a\b6\9d\c0\0b\18\1c\21\00\00\00\00\00\00\40\52\ff\ff\df\72\15\6b\dc\43\7d\f5\43\bd\1e\b8\ac\ae\f0\15\fa\f3\9d\70\b9\a4\23\45\f0\ea\ad\d2\1b\00\00\00\00\00\00\00\C0\41\5c\2a\42\3d\5f\c6\b7\bd\4d\e8\b5\7c\57\e7\d8\40\80\16\03\8b\20\e8\0b\1a\b3\0e\17\42\73\2c\17\22\00\00\00\00\00\00\40\4d\ff\ff\2f\8f\49\01\89\6d\4a\56\e3\52\95\b4\e3\dc\36\8f\72\63\41\df\1f\d4\02\4d\8a\ac\25\dd\29\00\00\00\00\00\00\00\C0\19\1c\1e\58\27\ea\9e\bd\78\e1\2a\af\3c\61\64\6b\06\49\33\7c\7e\ad\c1\da\46\a7\45\67\41\cf\2d\08\23\00\00\00\00\00\00\40\47\ff\ff\8f\17\88\b5\f1\05\a7\fd\08\a0\23\7d\f2\ad\24\87\69\1c\9f\fd\cd\d9\41\23\43\fb\4e\83\07\00\00\00\00\00\00\00\C0\58\f8\d2\67\43\b5\29\2c\6e\fb\82\68\76\1e\b9\22\3e\f6\22\da\32\e6\a0\78\5c\04\6a\52\93\e3\79\2c\24\00\00\00\00\00\00\40\42\ff\ff\df\33\bc\4b\9e\2f\74\5e\a8\35\9a\79\29\dc\6a\00\e2\8b\42\6c\34\09\21\2b\dd\bc\c6\8d\15\00\00\00\00\00\00\00\C0\87\38\63\9c\58\9c\47\fe\4f\2a\09\85\b8\91\cd\15\77\e9\d8\52\b3\5d\3d\bc\d3\de\fe\d1\02\64\e0\17\25\00\00\00\00\00\00\40\3d\ff\ff\2f\50\f0\e1\4a\59\41\bf\47\cb\10\76\60\0a\b1\79\5a\fb\e5\da\9a\38\00\33\77\7e\3e\98\23\00\00\00\00\00\00\00\C0\d3\4a\1e\b1\d0\b3\49\66\5f\4e\95\ae\f3\9a\ba\66\3b\dd\d4\68\a6\2f\f8\69\66\66\4a\28\9e\99\bc\20\26\00\00\00\00\00\00\40\37\ff\ff\8f\d8\2e\96\b3\f1\9d\66\6d\18\9f\3e\6f\db\9e\71\51\b4\43\f9\48\3e\3f\09\30\cd\67\3e\01\00\00\00\00\00\00\00\C0\6f\18\9c\a8\7d\68\95\44\56\68\7e\a8\a8\d5\51\4f\fb\79\44\d0\5e\f1\3e\af\87\be\b2\2e\fc\8d\7d\01\27\00\00\00\00\00\00\40\32\ff\ff\df\f4\62\2c\60\1b\6b\c7\0c\ae\15\3b\a6\09\e5\ea\c9\23\e7\67\af\6d\1e\11\ca\8e\df\48\0f\00\00\00\00\00\00\00\C0\c9\49\af\72\80\79\cf\0e\7d\30\f2\01\03\19\9a\9c\83\a4\37\5c\b6\5e\cf\af\a3\b1\4f\55\c4\f3\88\0d\28\00\00\00\00\00\00\40\2d\ff\ff\2f\11\97\c2\0c\45\38\28\ac\43\8c\37\dd\37\2b\64\42\93\8a\d6\15\9d\fd\18\64\50\57\53\1d\00\00\00\00\00\00\00\C0\00\b5\95\e7\a7\92\44\30\0d\e6\49\4a\19\37\bc\5d\01\08\eb\4e\f0\71\89\a3\b5\35\ec\9a\24\38\2f\29\29\00\00\00\00\00\00\40\28\ff\ff\7f\2d\cb\58\b9\6e\05\89\4b\d9\02\34\14\66\71\dd\ba\02\2e\45\7c\cc\dc\20\fe\11\cf\5d\2b\00\00\00\00\00\00\00\C0\da\21\35\a1\f4\6b\03\b1\0a\ca\a3\53\b0\d8\60\75\96\2f\a9\02\96\a6\76\d8\01\d5\0e\4f\ad\19\f1\06\2a\00\00\00\00\00\00\40\22\ff\ff\df\b5\09\0d\22\07\62\30\71\26\91\fc\22\37\5f\d5\b1\bb\8b\63\2a\d2\1b\f7\b6\60\f8\03\09\00\00\00\00\00\00\00\C0\f4\d3\54\9e\e6\b7\08\77\17\ba\f9\6b\a2\ab\67\22\4e\90\a0\59\b4\d7\1b\0f\e7\57\2e\8a\d8\3d\10\26\2b\00\00\00\00\00\00\40\1d\ff\ff\2f\d2\3d\a3\ce\30\2f\91\10\bc\07\f9\59\65\a5\4e\2a\2b\2f\d2\90\01\fb\fe\50\22\70\0e\17\00\00\00\00\00\00\00\C0\59\c9\8b\ab\e8\c4\70\89\5f\63\46\83\73\09\b1\20\2c\4b\13\20\5d\11\4b\37\58\ee\a6\bc\87\51\d9\25\2c\00\00\00\00\00\00\40\18\ff\ff\7f\ee\71\39\7b\5a\fc\f1\af\51\7e\f5\90\93\eb\c7\a2\9a\d2\40\f7\30\da\06\eb\e3\e7\18\25\00\00\00\00\00\00\00\C0\34\e8\ad\a4\8b\ad\a7\2f\cb\e9\89\d1\91\1f\1c\03\5a\d0\ec\19\4e\08\c8\af\d7\83\b4\4b\b9\78\17\21\2d\00\00\00\00\00\00\40\12\ff\ff\df\76\b0\ed\e3\f2\58\99\d5\9e\0c\be\9f\64\d9\bf\99\53\30\5f\a5\36\19\dd\a3\32\11\bf\02\00\00\00\00\00\00\00\C0\6b\2e\53\34\73\a5\0d\19\2d\20\a4\2c\7f\a1\60\2a\b4\9f\4c\29\fa\47\05\7d\73\ae\ea\4c\a6\4d\54\1c\2e\00\00\00\00\00\00\40\0d\ff\ff\2f\93\e4\83\90\1c\26\fa\74\34\83\ba\d6\92\1f\39\12\c3\d3\cd\0b\66\f8\e4\3d\f4\88\c9\10\00\00\00\00\00\00\00\C0\5c\2f\dc\19\9d\d4\37\fd\bf\bd\ab\bf\a9\d0\16\2c\bf\8d\dc\8a\40\1c\e7\38\cc\51\5a\8b\7a\6f\05\1e\2f\00\00\00\00\00\00\40\08\ff\ff\7f\af\18\1a\3d\46\f3\5a\14\ca\f9\b6\0d\c1\65\b2\8a\32\77\3c\72\95\d7\ec\d7\b5\00\d4\1e\00\00\00\00\00\00\00\C0\5f\a6\f9\a6\dd\9d\50\1c\29\7c\f0\fc\d4\09\5e\f1\c6\19\76\25\77\89\6c\52\34\cb\ad\86\e2\0c\f7\16\30\00\00\00\00\00\00\40\03\ff\ff\cf\cb\4c\b0\e9\6f\c0\bb\b3\5f\70\b3\44\ef\ab\2b\03\a2\1a\ab\d8\c4\b6\f4\71\77\78\de\2c\00\00\00\00\00\00\00\C0\f8\cf\94\1f\01\46\23\6d\a0\63\c4\c2\db\ea\c3\88\a0\a6\b4\2d\3e\78\61\ce\74\1e\2f\79\2a\c1\5d\2d\31\00\00\00\00\00\00\40\fd\fe\ff\2f\54\8b\64\52\08\1d\63\d9\ac\fe\7b\53\c0\99\23\fa\5a\78\c9\86\ca\f5\ca\2a\c6\a1\84\0a\00\00\00\00\00\00\00\C0\e1\ab\f9\96\7d\2a\24\41\c0\87\dc\cb\26\c9\24\26\9b\79\00\e1\3e\c9\5f\7b\3c\53\9e\f1\a6\76\a2\22\32\00\00\00\00\00\00\40\f8\fe\ff\7f\70\bf\fa\fe\31\ea\c3\78\42\75\78\8a\ee\df\9c\72\ca\1b\38\ed\f9\d4\d2\c4\87\19\8f\18\00\00\00\00\00\00\00\C0\e5\41\ef\2f\ce\74\e6\e6\51\d8\55\ac\9e\6a\9a\fa\55\df\99\24\c3\98\4f\5d\c8\2d\4b\55\65\be\07\13\33\00\00\00\00\00\00\40\f3\fe\ff\cf\8c\f3\90\ab\5b\b7\24\18\d8\eb\74\c1\1c\26\16\eb\39\bf\a6\53\29\b4\da\5e\49\91\99\26\00\00\00\00\00\00\00\C0\40\01\ba\40\25\41\17\1a\3f\a0\55\5b\08\03\7f\40\f7\54\53\b4\ad\5d\07\e4\b0\74\ca\27\60\9b\9a\0a\34\00\00\00\00\00\00\40\ed\fe\ff\2f\15\32\45\14\f4\13\cc\3d\25\7a\3d\d0\ed\13\0e\e2\f2\1c\c5\01\2f\f3\b0\17\98\ba\3f\04\00\00\00\00\00\00\00\C0\be\50\3a\82\3b\11\6d\a5\ca\af\f6\12\ac\3c\16\f5\ef\a4\30\79\1d\fe\b0\fd\b4\a6\4d\89\16\b7\21\26\35\00\00\00\00\00\00\40\e8\fe\ff\7f\31\66\db\c0\1d\e1\2c\dd\ba\f0\39\07\1c\5a\87\5a\62\c0\33\68\5e\d2\b8\b1\59\32\4a\12\00\00\00\00\00\00\00\C0\03\9c\ef\af\1f\9c\94\90\44\3f\9f\99\e4\7a\fc\22\9f\74\ac\2b\1c\e1\b3\13\4f\a0\d1\7f\af\65\0c\29\36\00\00\00\00\00\00\40\e3\fe\ff\cf\4d\9a\71\6d\47\ae\8d\7c\50\67\36\3e\4a\a0\00\d3\d1\63\a2\ce\8d\b1\c0\4b\1b\aa\54\20\00\00\00\00\00\00\00\C0\c8\79\bd\f6\a7\e1\c6\ff\b6\89\b2\da\58\0a\30\29\6a\d1\a5\24\10\19\01\ed\ba\a2\e5\d1\d7\b7\63\0e\37\00\00\00\00\00\00\40\de\fe\ff\1f\6a\ce\07\1a\71\7b\ee\1b\e6\dd\32\75\78\e6\79\4b\41\07\11\35\bd\90\c8\e5\dc\21\5f\2e\00\00\00\00\00\00\00\C0\a7\6a\b0\99\df\df\df\ce\5a\91\e8\ee\a3\e1\0b\f5\88\78\31\d1\5d\5a\3d\97\1b\bb\73\61\45\c7\d3\2c\38\00\00\00\00\00\00\40\d8\fe\ff\7f\f2\0c\bc\82\09\d8\95\41\33\6c\fb\83\49\d4\71\42\fa\64\2f\e3\c2\cf\9e\9e\2b\4b\05\0c\00\00\00\00\00\00\00\C0\c8\b8\0b\37\66\a2\38\52\b7\d6\67\6f\3c\3f\4f\cc\6e\7f\64\05\7f\37\5b\a7\f6\3c\5f\bd\d0\3c\50\25\39\00\00\00\00\00\00\40\d3\fe\ff\cf\0e\41\52\2f\33\a5\f6\e0\c8\e2\f7\ba\77\1a\eb\ba\69\08\9e\49\f2\ae\a6\38\ed\c2\0f\1a\00\00\00\00\00\00\00\C0\e8\52\22\1f\c6\a4\ec\29\60\48\69\9d\c7\2d\3f\a4\77\6a\cb\86\2f\e7\89\ed\99\f1\67\da\74\9c\a5\28\3a\00\00\00\00\00\00\40\ce\fe\ff\1f\2b\75\e8\db\5c\72\57\80\5e\59\f4\f1\a5\60\64\33\d9\ab\0c\b0\21\8e\ae\d2\ae\3a\1a\28\00\00\00\00\00\00\00\C0\25\2d\4c\2c\7d\e2\e9\63\e0\48\57\75\23\80\5b\5a\1a\6d\9c\34\86\b0\78\80\2a\61\22\a1\6d\25\4e\13\3b\00\00\00\00\00\00\40\c8\fe\ff\7f\b3\b3\9c\44\f5\ce\fe\a5\ab\e7\bc\00\77\4e\5c\2a\92\09\2b\5e\27\cd\84\8b\fd\63\c0\05\00\00\00\00\00\00\00\C0\83\cc\e4\ab\ad\26\d0\cf\af\20\3b\4b\83\f0\d2\0a\f6\a9\22\cf\c3\5f\49\f7\22\9a\9a\93\5e\4e\d4\1e\3c\00\00\00\00\00\00\40\c3\fe\ff\cf\cf\e7\32\f1\1e\9c\5f\45\41\5e\b9\37\a5\94\d5\a2\01\ad\99\c4\56\ac\8c\25\bf\db\ca\13\00\00\00\00\00\00\00\C0\6a\8f\6d\9a\b0\00\00\a7\02\65\73\fb\2d\81\b7\16\30\fd\ca\cc\6b\08\f1\b0\b7\ed\27\fd\0a\00\ae\05\3d\00\00\00\00\00\00\40\be\fe\ff\1f\ec\1b\c9\9d\48\69\c0\e4\d6\d4\b5\6e\d3\da\4e\1b\71\50\08\2b\86\8b\94\bf\80\53\d5\21\00\00\00\00\00\00\00\C0\35\84\35\6c\dd\8c\39\51\19\d3\95\73\85\f1\3f\9c\8c\dc\99\5b\37\ec\88\26\fa\38\2c\0d\9a\b3\3f\11\3e\00\00\00\00\00\00\40\b9\fe\ff\6f\08\50\5f\4a\72\36\21\84\6c\4b\b2\a5\01\21\c8\93\e0\f3\76\91\b5\6a\9c\59\42\cb\df\2f\00\00\00\00\00\00\00\C0\df\0e\d7\b5\fe\e3\31\51\69\da\de\2b\53\1e\2d\19\ba\ed\fd\80\87\55\86\9e\78\f9\fe\aa\d8\8a\89\15\3f\00\00\00\00\00\00\40\b3\fe\ff\cf\90\8e\13\b3\0a\93\c8\a9\b9\d9\7a\b4\d2\0e\c0\8a\99\51\95\3f\bb\a9\72\12\91\f4\85\0d\00\00\00\00\00\00\00\C0\fe\16\57\7d\06\94\6e\32\ed\f1\71\d3\34\10\da\c9\8a\18\ad\2b\c2\d8\2f\51\d9\35\e9\c3\cc\1b\c4\20\40\00\00\00\00\00\00\40\ae\fe\ff\1f\ad\c2\a9\5f\34\60\29\49\4f\50\77\eb\00\55\39\03\09\f5\03\a6\ea\88\7a\ac\52\6c\90\1b\00\00\00\00\00\00\00\C0\6a\06\0b\ff\8c\9a\9c\b5\11\53\16\18\73\c2\bc\f6\1d\52\0c\83\4d\1d\15\b5\c6\74\28\29\aa\d1\90\1d\41\00\00\00\00\00\00\40\a9\fe\ff\6f\c9\f6\3f\0c\5e\2d\8a\e8\e4\c6\73\22\2f\9b\b2\7b\78\98\72\0c\1a\68\82\46\14\e4\9a\29\00\00\00\00\00\00\00\C0\96\3f\45\42\73\27\3b\ac\3d\bc\f2\92\94\69\cb\ab\b3\01\44\89\84\4a\0d\b8\37\7b\10\e7\50\4d\7d\06\42\00\00\00\00\00\00\40\a3\fe\ff\cf\51\35\f4\74\f6\89\31\0e\32\55\3c\31\00\89\aa\72\31\f6\90\ba\1f\a7\58\ff\62\0d\41\07\00\00\00\00\00\00\00\C0\95\c4\d5\5a\65\b3\84\5f\6c\d0\9a\9b\0a\57\ac\5e\02\b6\bc\69\d6\f7\65\25\b8\1a\58\19\11\0c\34\15\43\00\00\00\00\00\00\40\9e\fe\ff\1f\6e\69\8a\21\20\57\92\ad\c7\cb\38\68\2e\cf\23\eb\a0\99\ff\20\4f\86\60\99\24\85\4b\15\00\00\00\00\00\00\00\C0\51\7e\d9\63\14\33\ca\18\5c\7d\d4\3c\35\8f\69\0d\40\1b\b3\02\b7\b4\a7\fc\7a\27\fb\18\13\e0\03\0b\44\00\00\00\00\00\00\40\99\fe\ff\6f\8a\9d\20\ce\49\24\f3\4c\5d\42\35\9f\5c\15\9d\63\10\3d\6e\87\7e\65\68\33\e6\fc\55\23\00\00\00\00\00\00\00\C0\d9\96\7b\1f\c3\09\27\ae\e9\16\49\f1\24\a1\c3\43\ca\c1\85\ac\39\43\fd\74\19\47\64\1a\bb\3f\73\11\45\00\00\00\00\00\00\40\93\fe\ff\cf\12\dc\d4\36\e2\80\9a\72\aa\d0\fd\ad\2d\03\95\5a\c9\9a\8c\35\84\a4\3e\ec\34\26\fc\00\00\00\00\00\00\00\00\C0\0c\bd\1c\36\b2\52\73\ec\8e\80\13\ac\0a\ac\72\27\71\30\36\d2\11\06\24\8f\bb\c8\b9\f8\15\ea\b7\0d\46\00\00\00\00\00\00\40\8e\fe\ff\1f\2f\10\6b\e3\0b\4e\fb\11\40\47\fa\e4\5b\49\0e\d3\38\3e\fb\9b\b3\83\46\86\f6\9d\06\0f\00\00\00\00\00\00\00\C0\5f\a5\cb\fb\60\9a\89\08\3e\32\c2\99\e2\95\98\27\1f\ef\21\98\00\1a\de\b1\e3\f5\37\fd\ea\45\5e\03\47\00\00\00\00\00\00\40\89\fe\ff\6f\4b\44\01\90\35\1b\5c\b1\d5\bd\f6\1b\8a\8f\87\4b\a8\e1\69\02\e3\62\4e\20\b8\15\11\1d\00\00\00\00\00\00\00\C0\f0\41\e4\a6\49\d5\22\f2\0e\85\01\41\ab\e9\7b\e3\f9\5f\99\89\74\59\34\28\d4\e4\ea\d8\95\62\f7\0d\48\00\00\00\00\00\00\40\84\fe\ff\bf\67\78\97\3c\5f\e8\bc\50\6b\34\f3\52\b8\d5\00\c4\17\85\d8\68\12\42\56\ba\79\8d\1b\2b\00\00\00\00\00\00\00\C0\da\60\1c\f1\be\15\93\e7\b0\1e\d9\9c\34\74\5d\4a\b5\e6\bf\41\1e\2f\ba\1c\58\66\a2\40\5f\64\c8\20\49\00\00\00\00\00\00\40\7e\fe\ff\1f\f0\b6\4b\a5\f7\44\64\76\b8\c2\bb\61\89\c3\f8\ba\d0\e2\f6\16\18\81\2c\73\c8\b6\c1\08\00\00\00\00\00\00\00\C0\24\45\85\a3\9a\5f\bb\7b\bd\8b\a3\6a\75\46\fc\cd\7d\c5\7b\ff\0c\15\65\d4\39\ce\06\d8\06\09\d5\27\4a\00\00\00\00\00\00\40\79\fe\ff\6f\0c\eb\e1\51\21\12\c5\15\4e\39\b8\98\b7\09\72\33\40\86\65\7d\47\60\34\0d\8a\2e\cc\16\00\00\00\00\00\00\00\C0\d1\ef\0c\2e\ff\29\5e\77\21\e2\03\4f\2e\25\03\f9\c8\ef\8a\59\91\6b\73\a4\8d\51\05\5f\7b\1e\b5\1f\4b\00\00\00\00\00\00\40\74\fe\ff\bf\28\1f\78\fe\4a\df\25\b5\e3\af\b4\cf\e5\4f\eb\ab\af\29\d4\e3\76\3f\3c\a7\4b\a6\d6\24\00\00\00\00\00\00\00\C0\7b\db\bb\83\d5\6f\ff\e1\ba\46\a8\a1\f0\12\48\98\9c\61\89\e4\0e\2c\b5\75\22\d3\c5\de\56\7a\60\14\4c\00\00\00\00\00\00\40\6e\fe\ff\1f\b1\5d\2c\67\e3\3b\cd\da\30\3e\7d\de\b6\3d\e3\a2\68\87\f2\91\7c\7e\12\60\9a\cf\7c\02\00\00\00\00\00\00\00\C0\74\23\3b\8d\93\69\d2\ed\98\63\b5\15\35\e8\dc\e2\ed\2a\c5\8c\fc\8b\0f\aa\19\a4\c1\bd\ef\f0\3f\16\4d\00\00\00\00\00\00\40\69\fe\ff\6f\cd\91\c2\13\0d\09\2e\7a\c6\b4\79\15\e5\83\5c\1b\d8\2a\61\f8\ab\5d\1a\fa\5b\47\87\10\00\00\00\00\00\00\00\C0\12\71\94\35\6f\02\62\4f\b4\06\d8\6b\2f\35\2d\a6\5c\3a\4d\88\a2\7d\a5\3c\49\ca\4b\ef\6a\e5\0e\07\4e\00\00\00\00\00\00\40\64\fe\ff\bf\e9\c5\58\c0\36\d6\8e\19\5c\2b\76\4c\13\ca\d5\93\47\ce\cf\5e\db\3c\22\94\1d\bf\91\1e\00\00\00\00\00\00\00\C0\a4\14\65\16\48\55\d6\60\29\53\81\33\2f\7a\94\49\0f\9f\e6\57\59\56\7e\4b\33\9e\eb\d0\e8\cf\56\0e\4f\00\00\00\00\00\00\40\5f\fe\ff\0f\06\fa\ee\6c\60\a3\ef\b8\f1\a1\72\83\41\10\4f\0c\b7\71\3e\c5\0a\1c\2a\2e\df\36\9c\2c\00\00\00\00\00\00\00\C0\33\d9\83\f7\6c\82\1a\1c\c2\94\c0\d1\28\99\3d\1f\a2\7d\be\67\e5\40\11\76\88\e5\c8\00\66\0e\87\23\50\00\00\00\00\00\00\40\59\fe\ff\6f\8e\38\a3\d5\f8\ff\96\de\3e\30\3b\92\12\fe\46\03\70\cf\5c\73\10\5b\00\e7\2d\60\42\0a\00\00\00\00\00\00\00\C0\7b\a1\17\e8\f6\85\7b\44\b9\3e\39\cf\34\85\e9\e8\4b\5e\1d\9f\b0\c6\f3\15\9e\ae\ae\70\5a\f4\21\2b\51\00\00\00\00\00\00\40\54\fe\ff\bf\aa\6c\39\82\22\cd\f7\7d\d4\a6\37\c9\40\44\c0\7b\df\72\cb\d9\3f\3a\08\81\ef\d7\4c\18\00\00\00\00\00\00\00\C0\d7\6f\e9\89\64\95\fd\db\46\8e\3a\a8\fe\a3\44\bf\33\ac\30\09\3f\62\40\32\02\12\f0\e2\ea\56\56\21\52\00\00\00\00\00\00\40\4f\fe\ff\0f\c7\a0\cf\2e\4c\9a\58\1d\6a\1d\34\00\6f\8a\39\f4\4e\16\3a\40\6f\19\10\1b\b1\4f\57\26\00\00\00\00\00\00\00\C0\f0\1a\f2\6d\53\73\0c\51\6b\85\bd\5b\d9\ee\a8\15\97\4e\d0\02\bf\c2\82\2d\36\e5\b7\37\2d\4c\a0\04\53\00\00\00\00\00\00\40\49\fe\ff\6f\4f\df\83\97\e4\f6\ff\42\b7\ab\fc\0e\40\78\31\eb\07\74\58\ee\74\58\e6\d3\ff\78\fd\03\00\00\00\00\00\00\00\C0\dc\39\28\c7\39\19\e1\b1\17\e0\8c\20\88\f8\0b\54\8b\78\83\5a\bf\f5\5d\88\b5\58\94\29\9b\f0\92\2d\54\00\00\00\00\00\00\40\44\fe\ff\bf\6b\13\1a\44\0e\c4\60\e2\4c\22\f9\45\6e\be\aa\63\77\17\c7\54\a4\37\ee\6d\c1\f0\07\12\00\00\00\00\00\00\00\C0\47\9b\5c\41\f8\bc\73\c0\c5\02\36\fc\ca\fb\d1\b0\c7\34\dd\3c\38\d6\c1\66\d7\95\cb\9b\80\ee\d8\07\55\00\00\00\00\00\00\40\3f\fe\ff\0f\88\47\b0\f0\37\91\c1\81\e2\98\f5\7c\9c\04\24\dc\e6\ba\35\bb\d3\16\f6\07\83\68\12\20\00\00\00\00\00\00\00\C0\1d\aa\0a\ed\58\b8\92\06\3e\25\26\7d\b4\9f\39\62\6d\c3\dd\c3\b0\9c\99\62\38\a1\f2\2a\d3\54\98\06\56\00\00\00\00\00\00\40\3a\fe\ff\5f\a4\7b\46\9d\61\5e\22\21\78\0f\f2\b3\ca\4a\9d\54\56\5e\a4\21\03\f6\fd\a1\44\e0\1c\2e\00\00\00\00\00\00\00\C0\24\77\63\00\05\cc\a4\b5\71\66\e2\61\60\46\35\bb\45\a1\fb\0c\ca\5e\9b\80\72\3b\dc\9b\05\6c\d5\09\57\00\00\00\00\00\00\40\34\fe\ff\bf\2c\ba\fa\05\fa\ba\c9\46\c5\9d\ba\c2\9b\38\95\4b\0f\bc\c2\cf\08\35\d4\5a\93\09\c3\0b\00\00\00\00\00\00\00\C0\14\c1\f8\fd\02\ec\d8\bf\07\68\ff\20\91\4a\e3\0d\6f\d8\a1\fa\bd\7d\9e\69\68\cf\6e\cb\0f\71\e2\09\58\00\00\00\00\00\00\40\2f\fe\ff\0f\49\ee\90\b2\23\88\2a\e6\5a\14\b7\f9\c9\7e\0e\c4\7e\5f\31\36\38\14\dc\f4\54\81\cd\19\00\00\00\00\00\00\00\C0\88\bf\a9\82\83\77\b8\ad\5a\7c\43\9b\1e\08\3b\3c\68\26\73\f5\d6\f0\26\21\c4\2f\be\91\46\96\5e\2e\59\00\00\00\00\00\00\40\2a\fe\ff\5f\65\22\27\5f\4d\55\8b\85\f0\8a\b3\30\f8\c4\87\3c\ee\02\a0\9c\67\f3\e3\8e\16\f9\d7\27\00\00\00\00\00\00\00\C0\63\93\71\c7\ef\da\77\e1\15\bc\fa\c4\05\30\27\09\64\d2\d5\de\5a\ed\66\d9\e7\84\00\f5\30\68\c5\1f\5a\00\00\00\00\00\00\40\24\fe\ff\bf\ed\60\db\c7\e5\b1\32\ab\3d\19\7c\3f\c9\b2\7f\33\a7\60\be\4a\6d\32\ba\47\65\22\7e\05\00\00\00\00\00\00\00\C0\ff\21\3e\ff\9d\ab\41\5e\bc\1c\ec\69\cf\4b\77\ce\0e\33\3d\b9\af\5c\0a\09\10\54\c4\6d\39\8f\96\26\fd\00\00\00\00\00\00\40\c6\fa\ff\9f\cb\78\02\35\c3\a8\c9\cc\33\f5\b3\e0\1b\29\f8\21\1f\a4\73\ac\f2\e5\a0\02\93\fb\bd\13\87\00\00\00\00\00\00\40\36\fd\ff\9f\64\11\c9\ab\d8\0a\cc\80\dc\25\3a\df\2d\8c\3f\cd\fa\90\1d\f0\a3\4b\97\eb\97\33\3d\08\00\00\00\00\00\00\00\C0\84\3e\9c\00\6e\ca\1e\f2\66\9f\c4\da\a7\2a\78\ee\e5\1d\d0\a0\00\c3\c7\18\94\48\59\7d\dc\bb\9d\13\00\00\00\00\00\00\00\C0\bf\fe\8c\8f\f9\9b\c1\47\f4\70\0f\80\7f\9c\28\99\aa\d1\5f\82\4b\17\a6\84\58\63\29\90\88\58\2f\26\7f\00\00\00\00\00\00\40\61\fd\ff\ef\3d\51\bd\12\3f\f3\f1\f2\08\2a\f2\9f\d3\63\f9\8d\a2\46\99\e5\a5\32\ed\be\e3\60\16\29\ff\ff\ff\ff\00\00\00\40\06\00\00\a0\77\c1\4b\97\67\a3\58\da\b2\71\37\f1\2e\12\08\09\47\a2\e1\51\fa\c0\29\47\b1\d6\59\22\fe\00\00\00\00\00\00\40\c1\fa\ff\ef\e7\ac\98\e1\ec\75\2a\6c\c9\6b\b0\17\4a\6f\71\9a\8e\47\e2\12\22\c5\a8\9c\54\73\c8\21\fc\92\02\00\00\00\00\40\e0\61\f2\ff\61\cf\ac\95\78\d3\f7\9d\65\0d\78\24\e8\6a\90\7e\b0\11\ac\e0\f3\de\d3\16\22\db\35\0f\f8\92\02\00\00\00\00\40\f5\61\f2\af\84\f4\35\27\63\0f\2e\9a\57\1b\ba\70\8c\aa\2c\1e\a9\c9\41\ff\5f\02\e6\8f\8e\4a\70\07\04\6d\fd\ff\00\00\00\40\21\9e\0d\f0\31\26\35\ae\18\9d\c1\db\e2\da\bb\03\75\ed\f0\02\06\34\a4\d7\35\c1\5d\ca\50\73\2e\21\fa\92\02\00\00\00\00\40\eb\61\f2\4f\bd\5c\62\80\b6\a9\ef\d8\82\08\b3\de\e8\36\1f\0f\88\10\1f\cc\be\c0\f5\c3\11\3a\85\23\f4\25\05\00\00\00\00\40\d5\c3\e4\af\e6\c3\e2\bc\db\e2\25\38\bd\28\32\95\74\15\bd\9c\59\db\ed\df\53\e1\b9\a6\b0\25\a6\16\94\00\00\00\00\00\00\40\f2\fc\ff\df\18\d6\c3\a3\42\24\8a\2b\9c\72\70\31\6f\13\e4\66\80\0c\cb\fa\8e\c0\68\1a\14\5d\98\2d\93\00\00\00\00\00\00\40\f7\fc\ff\8f\fc\a1\2d\f7\18\57\29\8c\06\fc\73\fa\40\cd\6a\ee\10\69\5c\94\5f\e1\60\80\52\e5\8d\1f\92\00\00\00\00\00\00\40\fc\fc\ff\3f\e0\6d\97\4a\ef\89\c8\ec\70\85\77\c3\12\87\f1\75\a1\c5\ed\2d\30\02\59\e6\90\6d\83\11\6a\00\00\00\00\00\00\40\d0\fd\ff\ff\62\cc\b6\81\3b\c2\59\ba\75\e1\73\0e\38\b4\0e\b5\c4\80\67\d0\bc\a4\71\63\b3\64\94\24\69\00\00\00\00\00\00\40\d5\fd\ff\af\46\98\20\d5\11\f5\f8\1a\e0\6a\77\d7\09\6e\95\3c\55\dd\f8\69\8d\c5\69\c9\f1\ec\89\16\68\00\00\00\00\00\00\40\da\fd\ff\5f\2a\64\8a\28\e8\27\98\7b\4a\f4\7a\a0\db\27\1c\c4\e5\39\8a\03\5e\e6\61\2f\30\75\7f\08\00\00\00\00\00\00\00\C0\86\fa\89\1a\bc\c7\8f\0a\27\86\e4\e9\86\d7\d9\a7\69\a3\be\65\b4\58\61\ee\19\45\87\2f\6d\ff\a0\14\00\00\00\00\00\00\00\C0\aa\01\02\0d\d2\42\33\b8\c7\ea\cf\cd\f7\f2\fe\2f\25\e6\a6\25\94\9a\a7\bf\70\4b\a4\c3\9d\85\fb\0d\f9\00\00\00\00\00\00\40\db\fa\ff\4f\ee\9d\8b\c6\ad\e4\ff\c8\25\03\f6\2c\c0\68\94\c1\17\5c\09\cb\5e\09\b3\7b\ff\6a\f8\0b\00\00\00\00\00\00\00\C0\75\74\64\b0\a3\60\f6\ed\55\a0\2e\1d\c4\5f\84\92\1a\0d\f7\36\c0\75\27\ec\93\aa\cc\4f\2c\df\a1\0f\00\00\00\00\00\00\00\C0\8a\47\d5\4d\3a\44\79\b7\f3\05\84\b5\86\b8\80\1d\79\bb\75\01\e2\70\e7\6e\26\d2\65\28\c7\f4\33\20\00\00\00\00\00\00\00\C0\11\63\d7\ba\20\3e\f7\0e\73\57\d4\da\b3\1c\ba\f5\36\a8\17\7a\ff\2f\6c\f9\3d\ae\40\14\fb\c9\cb\13\00\00\00\00\00\00\00\C0\a5\fd\e6\81\0d\73\cf\db\2c\24\8d\5f\0d\9b\68\36\df\ee\7b\03\f1\a6\58\ce\7c\64\05\67\8c\3b\70\29\00\00\00\00\00\00\00\C0\c7\b3\a9\94\b3\1f\07\bf\cb\0c\a1\44\f5\a4\ee\9c\0d\e8\9e\95\b7\35\59\c0\51\10\6c\2b\ac\1c\3a\18\00\00\00\00\00\00\00\C0\e8\b8\3c\57\2e\61\51\d3\c9\26\3c\35\73\50\5a\df\ba\09\af\79\02\d5\fa\26\74\4c\6d\ca\48\41\80\14\00\00\00\00\00\00\00\C0\3d\a8\2c\37\61\c5\d2\13\4d\90\f5\2b\89\22\b2\8c\20\38\2c\b8\14\c8\14\f0\37\df\98\ee\f6\78\aa\16\00\00\00\00\00\00\00\C0\17\a9\f2\a7\fb\46\d2\e3\5d\6f\78\fe\45\d7\70\31\b0\db\aa\3e\c0\f4\32\a7\8f\82\93\c0\c4\ab\15\18\00\00\00\00\00\00\00\C0\e9\4e\18\ac\51\6a\71\4a\ca\50\61\a3\59\58\39\c1\09\a3\7b\c7\af\88\b5\8e\e2\b1\80\9f\d2\5e\0d\1d\00\00\00\00\00\00\00\C0\7a\cc\6d\bb\7f\c2\a0\3d\74\af\c5\ce\81\1b\56\61\2c\12\af\6e\af\73\b4\61\92\70\6c\58\3a\b3\02\1f")
)