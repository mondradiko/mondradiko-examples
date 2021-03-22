// Compile with:
// $ asc -t SlidingLight.wat -O3 SlidingLight.ts

import Transform from "./components/Transform.d";

export class SlidingLight {
  speed: f64 = 3.0;
  destination_a: f64 = -10.0;
  destination_b: f64 = 10.0;

  velocity: f64;

  constructor() {}

  update(transform: Transform, dt: f64): void {
    let x = transform.getX();
    let y = transform.getY();
    let z = transform.getZ();

    if (x < this.destination_a) {
      this.velocity = this.speed;
    } else if(x > this.destination_b) {
      this.velocity = -this.speed;
    }

    x += this.velocity * dt;

    transform.setPosition(x, y, z);
  }
}

// Dummy update() for now until we have script class instantiation
let sliding_light = new SlidingLight

// self is meant to represent the entity ID,
// and we can just treat it like a Transform since the core API
// uses the entity ID as each method's instance reference
// (passed as i32)
export function update(self: Transform, dt: f64): void {
  sliding_light.update(self, dt);
}
