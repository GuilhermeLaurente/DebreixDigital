class Enigma {
  float giro = encoder1;

 void E() {
    pushMatrix(); 
    translate(width/2, height/2);  
      rotate(radians(encoder2));
    //rotate(radians(giro));
    image(E, 0, 0);
    popMatrix();
  }
  void N() {
    pushMatrix();  
    translate(width/2, height/2);
    if (giro < 30) {
        rotate(radians(encoder2));
      rotate(radians(giro));
    } else {
        rotate(radians(encoder2));
      rotate(radians(30));
    }
    image(N, 0, 0);
    popMatrix();

  } 
  void I() {
    pushMatrix();   
    translate(width/2, height/2); 
    if (giro < 60) {
        rotate(radians(encoder2));
      rotate(radians(giro));
    } else {
        rotate(radians(encoder2));
      rotate(radians(60));
    }
    image(I, 0, 0);
    popMatrix();
  } 
  void G() {
    pushMatrix();   
    translate(width/2, height/2); 
    if (giro < 90) {
        rotate(radians(encoder2));
      rotate(radians(giro));
    } else {
        rotate(radians(encoder2));
      rotate(radians(90));
    }
    image(G, 0, 0);
    popMatrix();
  }
  void M() {
    pushMatrix();   
    translate(width/2, height/2); 
    if (giro < 120) {
        rotate(radians(encoder2));
      rotate(radians(giro));
    } else {
        rotate(radians(encoder2));
      rotate(radians(120));
    }
    image(M, 0, 0);
    popMatrix();
  }
  void A() {
    pushMatrix();  
    translate(width/2, height/2); 
    if (giro < 150) {
        rotate(radians(encoder2));
      rotate(radians(giro));
    } else {
        rotate(radians(encoder2));
      rotate(radians(150));
    }
    image(A, 0, 0);
    if (giro>150) {
        rotate(radians(encoder2));
      image(fim, 0, 0);
    }
    popMatrix();
  }
}
