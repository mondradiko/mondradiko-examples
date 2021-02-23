;; Copyright (c) 2020 the Mondradiko contributors.
;; SPDX-License-Identifier: LGPL-3.0-or-later

(module
 (func $setPosition (import "" "TransformComponent_setPosition") (param i32 f64 f64 f64))
 (memory $memory 1)
 (export "memory" (memory $memory))
 (func $update (export "update") (param $self i32) (param $dt f64)
  (f64.store (i32.const 0)
    (f64.add
      (f64.load (i32.const 0))
      (get_local $dt)
    )
  )
  (call $setPosition
   (get_local $self)
   (f64.load (i32.const 0))
   (f64.const 0)
   (f64.const 0)
  )
 )
)
