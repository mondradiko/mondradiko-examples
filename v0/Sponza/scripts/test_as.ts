// Compile with:
// $ asc -t test_as.wat -O3 test_as.ts

import Transform from "./components/Transform.d";

let direction: f64 = -10.0;

// self is meant to represent the entity ID,
// and we can just treat it like a Transform since the core API
// uses the entity ID as each method's instance reference
// (passed as i32)
export function update(self: Transform, dt: f64): void {
  let x = self.getX();
  let y = self.getY();
  let z = self.getZ();

  if (x < -10 || x > 10) direction = -direction;
  x += direction * dt;

  self.setPosition(x, y, z);
}
