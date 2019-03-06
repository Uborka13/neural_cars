class Wall {
  float sX;
  float sY;
  float dX;
  float dY;
  float distance;
  private static final float TRESHOLD_CONSTANT = 0.995;

  Wall(Wall wall, float dX, float dY) {
    this(wall.dX, wall.dY, dX, dY);
  }

  Wall(float sX, float sY, float dX, float dY) {
    this.sX = sX;
    this.sY = sY;
    this.dX = dX;
    this.dY = dY;
    this.distance = dist(sX, sY, dX, dY);
  }

  void show() {
    fill(0);
    line(sX, sY, dX, dY);
  }

  boolean isCollidedWithWall(Car c) {
    float distanceToS = dist(c.pos.x, c.pos.y, sX, sY);
    float distanceToD = dist(c.pos.x, c.pos.y, dX, dY);
    float actualDistance = distanceToS + distanceToD;
    if (actualDistance * TRESHOLD_CONSTANT <= distance) {
      return true;
    }
    return false;
  }
}
