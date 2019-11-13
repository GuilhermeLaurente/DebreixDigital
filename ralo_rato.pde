class RaloRato 
{

  void rato()
  {
    background(255);

    mouse = int(encoder1*0.3);
    mou = int(encoder2);
    if(mouse > 10){
    m = int(encoder2);
    }

    //if ((mouse>30)&&(mou>30)&&(m>30)) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(giro*mouse));
    image(r1, 0, 0);
    popMatrix();
    //} else {
    //  pushMatrix();
    //  translate(width/2, height/2);
    //  image(r1, 0, 0);
    //  popMatrix();
    //}

    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(giro*mou));
    image(r2, 0, 0);
    popMatrix();

    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(giro*m));
    image(r3, 0, 0);
    popMatrix();

    pushMatrix();
    translate(width/2, height/2);
    image(frente, 0, 0);
    rotate(radians(-giro*mouse));
    image(texto, 0, 0);
    popMatrix();

    giro = giro+1;
  }
}
