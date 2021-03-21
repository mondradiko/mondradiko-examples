(module
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $i32_f64_=>_none (func (param i32 f64)))
 (type $i32_f64_f64_f64_=>_none (func (param i32 f64 f64 f64)))
 (import "Transform.d" "TransformComponent_getX" (func $components/Transform.d/Transform#getX (param i32) (result f64)))
 (import "Transform.d" "TransformComponent_getY" (func $components/Transform.d/Transform#getY (param i32) (result f64)))
 (import "Transform.d" "TransformComponent_getZ" (func $components/Transform.d/Transform#getZ (param i32) (result f64)))
 (import "Transform.d" "TransformComponent_setPosition" (func $components/Transform.d/Transform#setPosition (param i32 f64 f64 f64)))
 (memory $0 0)
 (table $0 1 funcref)
 (global $test_as/width f64 (f64.const 20))
 (global $test_as/speed f64 (f64.const 10))
 (global $test_as/direction (mut f64) (f64.const -1))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (export "update" (func $test_as/update))
 (export "memory" (memory $0))
 (func $test_as/update (param $0 i32) (param $1 f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 f64)
  local.get $0
  call $components/Transform.d/Transform#getX
  local.set $2
  local.get $0
  call $components/Transform.d/Transform#getY
  local.set $3
  local.get $0
  call $components/Transform.d/Transform#getZ
  local.set $4
  local.get $2
  global.get $test_as/direction
  global.get $test_as/speed
  f64.mul
  local.get $1
  f64.mul
  f64.add
  local.set $2
  local.get $2
  global.get $test_as/direction
  f64.mul
  f64.const 0.5
  global.get $test_as/width
  f64.mul
  f64.gt
  if
   global.get $test_as/width
   global.get $test_as/direction
   f64.mul
   local.get $2
   f64.sub
   local.set $2
   global.get $test_as/direction
   f64.neg
   global.set $test_as/direction
  end
  local.get $0
  local.get $2
  local.get $3
  local.get $4
  call $components/Transform.d/Transform#setPosition
 )
)
