class PoesiaCardeal
{

  void poesia_cardeal()
  {
 background(255);



  translate(displayWidth/2, displayHeight/2);
   image(cardeal,0,0);
  rotate(radians(encoder2));
mov = int( encoder1 * 10);



  image(POESIA, 0, 0);
 
 
  


  if (mov <=640) {
    image(Poesia, 0, -640+mov);
  } else {
    image(Poesia, 0, 0);
  }

  if (mov <= 430) {
    image(pOesia, -mov+430, (mov)+(mov*0.5)-645);
  } else {
    image(pOesia, 0, 0);
  }

  if (mov <= 870) {
    image(poEsia, -mov+870, (mov)-((mov*0.5))-435);
  } else {
    image(poEsia, 0, 0);
  }

  if (mov <= 880) {
    image(poeSia, (((-mov))+880), 0);
  } else {
    image(poeSia, 0, 0);
  }


  if (mov <= 730) {
    image(poesIa, -mov+730, (-mov)+(mov*0.5)+365);
  } else {
    image(poesIa, 0, 0);
  }

  if (mov <= 410) {
    image(poesiA, -mov+410, (-mov)-(mov*0.5)+615);
  } else {
    image(poesiA, 0, 0);
  }
  }
}
