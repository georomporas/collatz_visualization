// original code by: Daniel Shiffman
// https://thecodingtrain.com/CodingInTheCabana/002-collatz-conjecture.html
// https://youtu.be/EYLWxwo1Ed8


void setup() {
  size(1600,800);
  background(0);
  
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
    
    float len = PI+4;
    float angle_even  = PI/24;
    float angle_odd = -PI/24;
    resetMatrix();
    translate(width*2/3, height - 50);
    rotate(-PI/2);
    
    for(int j=0; j<set.size(); j++){
      int num = set.get(j);
      if((num%2)==0){
        rotate(angle_even);
      }else{
        rotate(angle_odd);
      }
      if(i%2==0){
         stroke(0,204,204,100);
      }else{
        stroke(153,0,153,90);
      }
      
      
      strokeWeight(1);
      line(0,0,len,0);
      translate(len,0);
    
    }
    
  }
  
}
