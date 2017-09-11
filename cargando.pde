color from = color (232,255,62);
color to = color (255, 62, 143);
 
int j=0;
void setup(){
  size(620,300);
  background(255);
}
void draw(){
 
  for(int i=1;i<width;i++){ //<>//
    noStroke();
    fill(156,10,64);
    rect(5,150,j,30,30);
    textSize(25);
    fill(255);
    text("En progreso...", 190, 174);  //<>//
    fill(1);
    fill(255);
    rect(210,215,textWidth("10%"),32);
    fill(1);
    text(j/6+"%",210,235);
    
    
    
 }
  j=j+6;
  if(j>=615){
    j=0;
    clear();
    background(255);
  }
 
 
}