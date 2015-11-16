int fibonacci(int n) {

  int x= 0, y=1, z=1;
  for (int i=1; i<n; i++) {
    x=y;
    y=z;
    z=x+y;
  };

  return x;
}

int squares = 7;
void setup() {
  println("Numero de fibonacci 13 donde es =.", fibonacci(squares));
  size(720, 600);
}

void draw() {
  background(255, 225, 255);
  int w = width / squares;
  int j =0;
  rectMode(CORNER); 
  for (int i = 0; i < squares; i++) {


    fill(map(fibonacci(i+1), fibonacci(squares), 0, 0, 255));
    rect(j, 0, fibonacci(i)*5, fibonacci(i)*5);
    j=j+fibonacci(i)*5;
  }
  
}
