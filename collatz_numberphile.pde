// original code by: Daniel Shiffman
// https://thecodingtrain.com/CodingInTheCabana/002-collatz-conjecture.html
// https://youtu.be/EYLWxwo1Ed8
// inspired by: https://editor.p5js.org/cshep99/sketches/DtAf8BXc-
// greatly inspired by: https://www.youtube.com/watch?v=LqKpkdRRLZw

void setup() {
  size(1600,1000);
  background(255);
  
  for(int i=1; i<10000; i++){
    IntList set = new IntList();
    // compute the set of numbers using collatz function
    int n =i;
    while(n>1){
      set.append(n);
      if((n%2)==0){
        n/=2;
      }else{
        n=(3*n+1)/2;
      }
    }
    set.append(1);
    set.reverse();
    
    float len = PI+3;
    float angle_even  = PI/15;
    float angle_odd = -PI/22.5;
    resetMatrix();
    translate(width*1/3, height*7/8);
    rotate(-PI/3);
    int[] colours ={255,102,102,255,153,153,255,204,204,255,102,102,255,204,153,153,0,0,204,0,102,255,204,229};
    float guess = (int) random(8);
    float r = colours[(int) (guess*3)];
    float g = colours[(int) (guess*3+1)];
    float b = colours[(int) (guess*3+2)];
    for(int j=0; j<set.size(); j++){
      int num = set.get(j);
      if((num%2)==0){
        rotate(angle_even);
      }else{
        rotate(angle_odd);
      }
      colorMode(RGB);
      stroke(r,g,b);
      strokeWeight(10);
      line(0,0,0,-len);
      translate(0,-len);
    
    }
    
  }
  
}
