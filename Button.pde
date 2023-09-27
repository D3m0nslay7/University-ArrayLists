public class Button {

  float x;
  float y;
  float w;
  float h;
  String buttonSide;

  public Button(float X, float Y, String side) {
    x = X;
    y = Y;
    w = 100;
    h = 100;
    buttonSide = side;
  }

  void Display() {
    fill(100);
    rect(x, y, w, h);
    textAlign(CENTER);
    textSize(20);
    fill(255);
    text(buttonSide, x+50, y+50);
  }

  //checks if we where clicked
  boolean check(float _x, float _y) {
    if ( _x > x && _y > y && _x < x+w && _y < y+h ) {
      return true;
    } else {
      return false;
    }
  }
}
