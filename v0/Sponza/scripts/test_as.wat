(module
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $i32_f64_=>_none (func (param i32 f64)))
 (type $i32_f64_f64_f64_=>_none (func (param i32 f64 f64 f64)))
 (import "Transform.d" "TransformComponent_getX" (func $components/Transform.d/Transform#getX (param i32) (result f64)))
 (import "Transform.d" "TransformComponent_getY" (func $components/Transform.d/Transform#getY (param i32) (result f64)))
 (import "Transform.d" "TransformComponent_getZ" (func $components/Transform.d/Transform#getZ (param i32) (result f64)))
 (import "Transform.d" "TransformComponent_setPosition" (func $components/Transform.d/Transform#setPosition (param i32 f64 f64 f64)))
 (memory $0 0)
 (global $test_as/direction (mut f64) (f64.const -10))
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
  i32.const 1
  local.get $2
  f64.const 10
  f64.gt
  local.get $2
  f64.const -10
  f64.lt
  select
  if
   global.get $test_as/direction
   f64.neg
   global.set $test_as/direction
  end
  local.get $0
  local.get $2
  global.get $test_as/direction
  local.get $1
  f64.mul
  f64.add
  local.get $3
  local.get $4
  call $components/Transform.d/Transform#setPosition
 )
)
