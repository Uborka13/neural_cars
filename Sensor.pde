class Sensor {
  PVector position = new PVector();
  PVector target = new PVector();
  PVector cleanTarget;
  float targetX;
  float targetY;
  Car car;

  Sensor(Car car) {
    this.car = car;
    position.set(car.pos.x + 5, car.pos.y + 20);
    target.set(position.x + targetX, position.y + targetY);
  }

  void show() {
    fill(0);
    line(position.x, position.y, target.x, target.y);
  }

  Sensor withTarget(float x, float y) {
    targetX = x;
    targetY = y;
    createCleanTarget();
    return this;
  }  

  void update() {
    position.set(car.pos.x + 5, car.pos.y + 20);
    target.set(position.x + targetX, position.y + targetY);
  }
  
  void createCleanTarget() {
     cleanTarget = new PVector(targetX, targetY);
  }
  
  
}
