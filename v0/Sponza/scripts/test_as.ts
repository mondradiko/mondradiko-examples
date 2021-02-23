declare namespace mondradiko {
  @external("TransformComponent_getX")
  function TransformComponent_getX(self: i32): f64
  @external("TransformComponent_getY")
  function TransformComponent_getY(self: i32): f64
  @external("TransformComponent_getZ")
  function TransformComponent_getZ(self: i32): f64
  @external("TransformComponent_setPosition")
  function TransformComponent_setPosition(self: i32, x: f64, y: f64, z: f64): void
}

let direction: f64 = -10.0;

export function update(self: i32, dt: f64): void {
  let x = mondradiko.TransformComponent_getX(self);
  let y = mondradiko.TransformComponent_getY(self);
  let z = mondradiko.TransformComponent_getZ(self);

  if (x < -10 || x > 10) direction = -direction;
  x += direction * dt;

  mondradiko.TransformComponent_setPosition(self, x, y, z);
}
