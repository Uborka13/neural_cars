class DriverSchool {
  Car[] cars;
  int minStep = 1000;
  
  DriverSchool(int size) {
    cars = new Car[size];
    for (int i = 0; i < cars.length; i++) {
      cars[i] = new Car();
    }
  }
  
  void show() {
    for (int i = 0; i< cars.length; i++) {
      cars[i].show();
    }
  }
  
  void update() {
    for (int i = 0; i < cars.length; i++) {
      if (cars[i].driver.step > minStep) {
        cars[i].dead = true;
      } else {
        cars[i].update();
      }
    }
  }
  
  boolean allCarsBrokeDown() {
    for (int i = 0; i < cars.length; i++) {
      if (!cars[i].dead && !cars[i].finished) {
        return false;
      }
    }

    return true;
  }
  
  
}
