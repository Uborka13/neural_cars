class Car {
  PVector pos;
  PVector vel;
  PVector acc;
  PVector direction;
  Sensor[] sensors;
  Sensor leftSensor;
  Sensor rightSensor;
  Driver driver;
  
  boolean dead = false;
  boolean finished = false;


  Car() {
    driver = new Driver(1000);
    pos = new PVector(150, 50);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    //setupSensors();
  }

  void setupSensors() {
    leftSensor = new Sensor(this).withTarget(50, 50);
    rightSensor = new Sensor(this).withTarget(-50, 50);
    sensors = new Sensor[2];
    sensors[0] = leftSensor;
    sensors[1] = rightSensor;
  }

  void show() {
    fill(120);
    ellipse(pos.x, pos.y, 10, 10);
    //showSensors();
  }

  void update() {
    if (!dead && !finished) {
      move();
      if (pos.x < 2 || pos.y < 2 || pos.x > width -2 || pos.y > height -2) {
        dead = true;
      } else if (dist(pos.x, pos.y, finish.x, finish.y) < 5) {
        finished = true;
      }
    }
    track.isCarCollidedWithTrack(this);
  }

  void move() {
    if (driver.directions.length > driver.step) {
      acc = driver.directions[driver.step];
      driver.step++;
    } else {
      dead = true;
    }
    acc.limit(0.5);
    vel.add(acc);
    vel.limit(5);
    pos.add(vel);
    //updateSensors();
  }

  void showSensors() {
    for (int i = 0; i < sensors.length; i++) {
      sensors[i].show();
    }
  }

  void updateSensors() {
    for (int i = 0; i < sensors.length; i++) {
      sensors[i].update();
    }
  }
}
