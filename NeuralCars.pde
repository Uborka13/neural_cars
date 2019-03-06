DriverSchool school;
Track track;
PVector finish = new PVector(700, 750);

void setup() {
  size(800, 800);
  school = new DriverSchool(100);
  track = new Track();
}

void draw() {
  background(255);
  track.showTrack();
  fill(255, 0, 0);
  ellipse(finish.x, finish.y, 10, 10);
  if (school.allCarsBrokeDown()) {
  } else {
    school.update();
    school.show();
  }
}
