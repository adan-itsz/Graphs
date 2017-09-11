float[] serie = {
  72,30,80,150,20,30,50,70,10,360,120
}; 

int[] cantidad={
  10,20,30,40,50,60,70,80,90,100,110,120,130
};

String[] nombres={
  "uno","dos","tres","cuatro","cinco","seis","siete","ocho","nueve","diez","once"
};

void setup() {
  size(790, 550);
  noLoop();
  noStroke();
  // rectMode(CORNERS);
  background(255);
}

void draw() {


  println(max(serie));

  int largura = (750/serie.length);
  fill(1);
   rect(5,480,width,2);//horizontal
   rect(29,0,1,height-20);//vertical
   int aux=480;
   int auxtext=0;
  for (int i=0;i<serie.length;i=i+1) {
   rect(25,aux,10,1);
     
     
    float j = map(serie[i], 0.0, max(serie), 0.0, 500);//(0-360,0-500)
    text(auxtext,0,aux);
    aux=aux-50;
    auxtext=auxtext+int(max(serie)/10);
    if(serie[i]>200){
      fill(4,153,113);
    }
    else if(serie[i]>100){
      fill(120,0,0);
    }
    else if(serie[i]>50){
      fill(59,155,18);
    }
    else {
      fill(100);
    }
    rect((i*largura)+30, (500-j)-20, largura-10, j);
    fill(1);
    text(nombres[i],(i*largura)+45,500);
   
  }
}