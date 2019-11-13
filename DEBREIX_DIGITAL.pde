import processing.serial.*;

float encoder1;
float encoder2;
float sw1;
float sw2;

int counter1;
int counter2;
int swCounter;

PImage abre;

PImage frente, texto, r1, r2, r3;
RaloRato ralo;

PImage Poesia, pOesia, poEsia, poeSia, poesIa, poesiA, POESIA,cardeal; 
int p, o, e, s, i, a;
boolean pp = false;
boolean oo = false;
boolean ee = false;
boolean ss = false;
boolean ii = false;
boolean aa = false;
PoesiaCardeal poesiacardeal;
int mov;

PImage E, N, I, G, M, A, fim;
int giro, mouse, mou, m;
Enigma enigma;
//Enigma_ enigma_;

PImage um, dois, tres, quatro, cinco, seis; 
float dado1, dado2;
int contador = 0;
Dados dados;

PImage ver1, ver2;
int giro2, mouse2, mou2;
ComplexoVer ver;


Serial arduino;



void setup() {

  size(displayWidth, displayHeight);

  imageMode(CENTER);
  ellipseMode(CENTER);

  abre = loadImage("abre_gastao.jpg");

  frente = loadImage("frente.png");
  texto = loadImage("texto.png");
  r1 = loadImage("r1.png");
  r2 = loadImage("r2.png");
  r3 = loadImage("r3.png");

  Poesia = loadImage("pp.png");
  pOesia = loadImage("oo.png");
  poEsia = loadImage("ee.png");
  poeSia = loadImage("ss.png");
  poesIa = loadImage("ii.png");
  poesiA = loadImage("aa.png");
  POESIA = loadImage("pingo.png");
  cardeal = loadImage("poesia_cardeal_cardeal.png");

  E = loadImage("E.png");
  N = loadImage("N.png");
  I = loadImage("I.png");
  G = loadImage("G.png");
  M = loadImage("M.png");
  A = loadImage("A.png");
  fim = loadImage("enigmaa.png");

  um = loadImage("1.jpg");
  dois = loadImage("2.jpg");
  tres = loadImage("3.jpg");
  quatro = loadImage("4.jpg");
  cinco = loadImage("5.jpg");
  seis = loadImage("6.jpg");

  ver1 = loadImage("complexo_ver.png");
  ver2 = loadImage("complexo_ver2.png");


  // inicia a comunicação serial com o arduino
  println(Serial.list());
  arduino = new Serial(this, Serial.list()[0], 9600);
  arduino.bufferUntil('\n');
}

void draw() {
  if(sw1 < 0){
    sw1 = 0;
  }
    if(sw2 < 0){
    sw2 = 0;
  }
  
  swCounter = int(sw2 - sw1);
  if (swCounter < 0) {
    swCounter = 0;
  }
  if (swCounter > 6) {
    swCounter = 0;
  }

  switch(swCounter)
  {
  case 0:
    background(0);
    image(abre, displayWidth/2, displayHeight/2);
  //  textSize(32);
   // text("Abre", 10, 30); 
    break;
  case 1:
    ralo = new RaloRato();
    ralo.rato();
   // textSize(32);
    //text("Ralo rato - 1988", 10, 30); 
    break;
  case 2:
    background(255);
    poesiacardeal = new PoesiaCardeal();
    poesiacardeal.poesia_cardeal();

   // textSize(32);
   // text("Poesia Cardeal - 1991", 10, 30); 
    break;
  case 3:

    background(255);
    enigma= new Enigma();
    enigma.E();
    enigma.N();
    enigma.I();
    enigma.G();
    enigma.M();
    enigma.A();

    break;
  case 4:
  if(encoder1 < 0){
  encoder1 = 0;
  }
    background(0);
    pushMatrix();
    translate((width-1160)/2, (height-280)/2);
    for (int x = 0; x < 1200; x = x + 40) {
      for (int y = 0; y < 280; y = y + 40) {
        dados = new Dados(x, y);
        dados.dado();
      }
    }


    if (contador >= 20) {
      P();
    }
    if (contador >= 40) {
      O();
    }
    if (contador >= 60) { 
      E();
    }
    if (contador >= 80) {
      S();
    }
    if (contador >= 100) {
      I();
    }
    if (contador >= 120) {
      A();
    }
    if (contador >= 140) {  
      a();
    }
    if (contador >= 160) {
      i();
    }
    if (contador >= 180) {
      s();
    }
    if (contador >= 200) {
      e();
    }
    if (contador >= 220) {
      o();
    }
    if (contador >= 240) {
      p();
      // noLoop();
    }
    // if (contador >= 140) {  
    //  p();
    //}
    //if (contador >= 160) {
    //  o();
    //}
    //if (contador >= 180) {
    //  e();
    //}
    //if (contador >= 200) {
    //  s();
    //}
    //if (contador >= 220) {
    //  i();
    //}
    //  if (contador >= 240) {
    //  a();
    //noLoop();
    popMatrix();
    if(encoder1 > 0){
    delay(int(encoder1*10));
    }else{
    delay(0);
    }
    contador=int(encoder2*10);


   // textSize(32);
   // text("Poesia Dado - 2010", 10, 30); 
    break;
  case 5:
    ver = new ComplexoVer();
    ver.complexo();
   // textSize(32);
   // text("Complexo Ver - 2011", 10, 30); 
    break;
  case 6:
    background(0);
    textSize(32);
    text("Créditos", displayWidth/2, displayHeight/2); 
    break;
  }




  // printa as leituras analógicas
  print(int(encoder1));
  print(",");
  print(int(encoder2));
  print(",");
  println(int(swCounter));
}

void serialEvent(Serial arduino) {
  String inString = arduino.readStringUntil('\n');
  if (inString != null) {
    inString = trim(inString);
    float[] leituraSerial = float(split(inString, ","));
    if (leituraSerial.length >= 1) {
      encoder1 = int(leituraSerial[0]);
      encoder2 = int(leituraSerial[1]);
      sw1 = int(leituraSerial[2]);
      sw2 = int(leituraSerial[3]);
    }
  }
}
