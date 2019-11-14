class Dados 
{
  float x, y;
  Dados (float px, float py) {
    x = px;
    y= py;
  }
  void dado() {
    //fill(255);
   // rect(x, y, 40, 40);
    //fill(0);
    // translate(x,y);
    int sorteio = int(random(1, 7));
    switch(sorteio) {
    case 1: 
      image(um, x, y, 40, 40);
      break;
    case 2: 
      image(dois, x, y, 40, 40);
      break;
    case 3: 
      image(tres, x, y, 40, 40);
      break;
    case 4: 
      image(quatro, x, y, 40, 40);
      break;
    case 5: 
      image(cinco, x, y, 40, 40);
      break;
    case 6: 
      image(seis, x, y, 40, 40);
      break;
    }
  }
}

void P() {
  for (int x = 0; x <= 160; x = x + 40) {
    for (int y = 0; y < 280; y = y + 240) {
      image(seis, x, y, 40, 40);
    }
  }
  for (int x = 0; x <= 160; x = x + 160) {
    for (int y = 0; y < 280; y = y + 40) {
      image(seis, x, y, 40, 40);
    }
  }
  image(seis, 80, 80, 40, 40);
  image(seis, 80, 160, 40, 40);
  image(seis, 80, 200, 40, 40);
  image(seis, 120, 160, 40, 40);
  image(seis, 120, 200, 40, 40);
}
void O() {
  for (int x = 200; x <= 360; x = x + 40) {
    for (int y = 0; y < 280; y = y + 240) {
      image(cinco, x, y, 40, 40);
    }
  }
  for (int y = 0; y<280; y = y+40) {
    image(cinco, 200, y, 40, 40);
    image(cinco, 360, y, 40, 40);
  }
  image(cinco, 280, 80, 40, 40);
  image(cinco, 280, 120, 40, 40);
  image(cinco, 280, 160, 40, 40);
}

void E() {
  for (int x = 400; x <= 560; x = x + 40) {
    for (int y = 0; y < 280; y = y + 240) {
      image(quatro, x, y, 40, 40);
    }
  }
  for (int y = 0; y<280; y = y+40) {
    image(quatro, 400, y, 40, 40);
    image(quatro, 560, y, 40, 40);
  }
  image(quatro, 480, 80, 40, 40);
  image(quatro, 520, 80, 40, 40);
  image(quatro, 480, 160, 40, 40);
  image(quatro, 520, 160, 40, 40);
}
void S () {
  for (int x = 600; x <= 760; x = x + 40) {
    for (int y = 0; y < 280; y = y + 240) {
      image(tres, x, y, 40, 40);
    }
  }
  for (int y = 0; y<280; y = y+40) {
    image(tres, 600, y, 40, 40);
    image(tres, 760, y, 40, 40);
  }
  image(tres, 640, 160, 40, 40);
  image(tres, 680, 160, 40, 40);
  image(tres, 680, 80, 40, 40);
  image(tres, 720, 80, 40, 40);
}

void I () {
  for (int x = 800; x <= 960; x = x + 40) {
    for (int y = 0; y < 280; y = y + 240) {
      image(dois, x, y, 40, 40);
    }
  }
  for (int y = 0; y<280; y = y+40) {
    image(dois, 800, y, 40, 40);
    image(dois, 960, y, 40, 40);
  }
  for (int y = 40; y <= 200; y = y + 40) {
    image(dois, 840, y, 40, 40);
  }
  for (int y = 40; y <= 200; y = y + 40) {
    image(dois, 920, y, 40, 40);
  }
}

void A () {
  for (int x = 1000; x <= 1160; x = x + 40) {
    for (int y = 0; y < 280; y = y + 240) {
      image(um, x, y, 40, 40);
    }
  }
  for (int y = 0; y<280; y = y+40) {
    image(um, 1000, y, 40, 40);
    image(um, 1160, y, 40, 40);
  }
  image(um, 1080, 80, 40, 40);
  image(um, 1080, 160, 40, 40);
  image(um, 1080, 200, 40, 40);
}

void p () {
  for (int x = 0; x <= 160; x = x + 40) {
    for (int y = 0; y < 280; y = y + 40) {
      image(um, x, y, 40, 40);
    }
  }
  for (int x = 0; x <= 160; x = x + 40) {
    for (int y = 0; y < 280; y = y + 240) {
      image(seis, x, y, 40, 40);
    }
  }
  for (int x = 0; x <= 160; x = x + 160) {
    for (int y = 0; y < 280; y = y + 40) {
      image(seis, x, y, 40, 40);
    }
  }
  image(seis, 80, 80, 40, 40);
  image(seis, 80, 160, 40, 40);
  image(seis, 80, 200, 40, 40);
  image(seis, 120, 160, 40, 40);
  image(seis, 120, 200, 40, 40);
}

void o() {
  for (int x = 200; x <= 360; x = x + 40) {
    for (int y = 0; y < 280; y = y + 40) {
      image(dois, x, y, 40, 40);
    }
  }
  for (int x = 200; x <= 360; x = x + 40) {
    for (int y = 0; y < 280; y = y + 240) {
      image(cinco, x, y, 40, 40);
    }
  }
  for (int y = 0; y<280; y = y+40) {
    image(cinco, 200, y, 40, 40);
    image(cinco, 360, y, 40, 40);
  }
  image(cinco, 280, 80, 40, 40);
  image(cinco, 280, 120, 40, 40);
  image(cinco, 280, 160, 40, 40);
}
void e() {
  for (int x = 400; x <= 560; x = x + 40) {
    for (int y = 0; y < 280; y = y + 40) {
      image(tres, x, y, 40, 40);
    }
  }
  for (int x = 400; x <= 560; x = x + 40) {
    for (int y = 0; y < 280; y = y + 240) {
      image(quatro, x, y, 40, 40);
    }
  }
  for (int y = 0; y<280; y = y+40) {
    image(quatro, 400, y, 40, 40);
    image(quatro, 560, y, 40, 40);
  }
  image(quatro, 480, 80, 40, 40);
  image(quatro, 520, 80, 40, 40);
  image(quatro, 480, 160, 40, 40);
  image(quatro, 520, 160, 40, 40);
}
void s () {
  for (int x = 600; x <= 760; x = x + 40) {
    for (int y = 0; y < 280; y = y + 40) {
      image(quatro, x, y, 40, 40);
    }
  }

  for (int x = 600; x <= 760; x = x + 40) {
    for (int y = 0; y < 280; y = y + 240) {
      image(tres, x, y, 40, 40);
    }
  }
  for (int y = 0; y<280; y = y+40) {
    image(tres, 600, y, 40, 40);
    image(tres, 760, y, 40, 40);
  }
  image(tres, 640, 160, 40, 40);
  image(tres, 680, 160, 40, 40);
  image(tres, 680, 80, 40, 40);
  image(tres, 720, 80, 40, 40);
}
void i () {
  for (int y = 40; y <= 200; y = y + 40) {
    image(cinco, 880, y, 40, 40);
  }
}
void a () {
  for (int x = 1000; x <= 1160; x = x + 40) {
    for (int y = 0; y < 280; y = y + 40) {
      image(seis, x, y, 40, 40);
    }
  }
  for (int x = 1000; x <= 1160; x = x + 40) {
    for (int y = 0; y < 280; y = y + 240) {
      image(um, x, y, 40, 40);
    }
  }
  for (int y = 0; y<280; y = y+40) {
    image(um, 1000, y, 40, 40);
    image(um, 1160, y, 40, 40);
  }
  image(um, 1080, 80, 40, 40);
  image(um, 1080, 160, 40, 40);
  image(um, 1080, 200, 40, 40);
}
