class ComplexoVer 
{
  void complexo()
  {

    float pot1 = encoder1;
    float pot2 = encoder2;


    background(255);

    mouse2 = int(map(pot1, 0, height, 0, 50));
    mou2 = int(map(pot2, 0, height, 0, 50));

    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(giro2*mouse2));
    image(ver1, 0, 0);
    popMatrix();

    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(giro2*mou2));
    image(ver2, 0, 0);
    popMatrix();

    giro2 = giro2+1;
  }
}
