public static Wall[] combine(Wall[] a, Wall[] b) {
  int length = a.length + b.length;
  Wall[] result = new Wall[length];
  System.arraycopy(a, 0, result, 0, a.length);
  System.arraycopy(b, 0, result, a.length, b.length);
  return result;
}

class Track {
  Wall[] trackWalls;
  Wall[] trackWallsLeft;
  Wall[] trackWallsRight;

  Track() {
    trackWalls = new Wall[25];
    trackWallsLeft = new Wall[14];
    trackWallsRight = new Wall[11];
    buildTrack();
  }

  void buildTrack() {
    trackWallsLeft[0] = new Wall(100, 0, 100, 150);
    trackWallsLeft[1] = new Wall(trackWallsLeft[0], 150, 200);
    trackWallsLeft[2] = new Wall(trackWallsLeft[1], 300, 200);
    trackWallsLeft[3] = new Wall(trackWallsLeft[2], 350, 300);
    trackWallsLeft[4] = new Wall(trackWallsLeft[3], 300, 400);
    trackWallsLeft[5] = new Wall(trackWallsLeft[4], 200, 400);
    trackWallsLeft[6] = new Wall(trackWallsLeft[5], 100, 500);
    trackWallsLeft[7] = new Wall(trackWallsLeft[6], 100, 600);
    trackWallsLeft[8] = new Wall(trackWallsLeft[7], 200, 700);
    trackWallsLeft[9] = new Wall(trackWallsLeft[8], 500, 700);
    trackWallsLeft[10] = new Wall(trackWallsLeft[9], 600, 650);
    trackWallsLeft[11] = new Wall(trackWallsLeft[10], 600, 550);
    trackWallsLeft[12] = new Wall(trackWallsLeft[11], 650, 550);
    trackWallsLeft[13] = new Wall(trackWallsLeft[12], 650, 800);
    trackWallsRight[0] = new Wall(200, 0, 200, 100);
    trackWallsRight[1] = new Wall(trackWallsRight[0], 350, 100);
    trackWallsRight[2] = new Wall(trackWallsRight[1], 450, 300);
    trackWallsRight[3] = new Wall(trackWallsRight[2], 300, 500);
    trackWallsRight[4] = new Wall(trackWallsRight[3], 200, 550);
    trackWallsRight[5] = new Wall(trackWallsRight[4], 300, 600);
    trackWallsRight[6] = new Wall(trackWallsRight[5], 500, 600);
    trackWallsRight[7] = new Wall(trackWallsRight[6], 600, 400);
    trackWallsRight[8] = new Wall(trackWallsRight[7], 700, 400);
    trackWallsRight[9] = new Wall(trackWallsRight[8], 750, 600);
    trackWallsRight[10] = new Wall(trackWallsRight[9], 750, 800);
    trackWalls = combine(trackWallsLeft,trackWallsRight);
  }

  void showTrack() {
    for (int i = 0; i < trackWalls.length; i++) {
      trackWalls[i].show();
    }
  }

  void isCarCollidedWithTrack(Car car) {
    for (Wall wall : trackWalls) {
      if (wall.isCollidedWithWall(car)) {
       car.dead = true;
       break;
       }
    }
  }
}
