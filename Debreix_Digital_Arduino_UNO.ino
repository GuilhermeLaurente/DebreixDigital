
#define clk_1 3
#define dt_1 7
volatile int encoder_1 = 0;
bool escSerial_1 = false;
int sw_1 = 6;
unsigned short int sw_1_counter = 0;

#define clk_2 2
#define dt_2 4
volatile int encoder_2 = 0;
bool escSerial_2 = false;
int sw_2 = 5;
unsigned short int sw_2_counter = 0;

const int led_R = 10;
const int led_G = 9;
const int led_B = 11;

void setup()
{
  pinMode(clk_1, INPUT);
  pinMode(dt_1, INPUT);
  pinMode(sw_1, INPUT_PULLUP);

  pinMode(clk_2, INPUT);
  pinMode(dt_2, INPUT);
  pinMode(sw_2, INPUT_PULLUP);

  pinMode(led_R, OUTPUT);
  pinMode(led_G, OUTPUT);
  pinMode(led_B, OUTPUT);

  Serial.begin(9600);
  while (!Serial);

  attachInterrupt(0, clk_1_int, FALLING);
  attachInterrupt(1, clk_2_int, FALLING);
}

void loop()
{
  if (digitalRead(sw_1) == LOW)
  {
    sw_1_counter++;
    encoder_1 = 0;
    encoder_2 = 0;
    Serial.print(encoder_2, DEC);
    Serial.print(",");
    Serial.print(encoder_1, DEC);
    Serial.print(",");
    Serial.print(sw_1_counter);
    Serial.print(",");
    Serial.println(sw_2_counter);

//      digitalWrite(9, LOW);
//      digitalWrite(10, LOW);
     digitalWrite(11, LOW);

    while (digitalRead(sw_1) == LOW);

    delay (100);
  }
  if (escSerial_1 == true)
  {
    escSerial_1 = false;
    Serial.print(encoder_2, DEC);
    Serial.print(",");
    Serial.print(encoder_1, DEC);
    Serial.print(",");
    Serial.print(sw_1_counter);
    Serial.print(",");
    Serial.println(sw_2_counter);

  }

  if (digitalRead(sw_2) == LOW)
  {
    sw_2_counter++;
    encoder_1 = 0;
    encoder_2 = 0;
    Serial.print(encoder_2, DEC);
    Serial.print(",");
    Serial.print(encoder_1, DEC);
    Serial.print(",");
    Serial.print(sw_1_counter);
    Serial.print(",");
    Serial.println(sw_2_counter);

//      digitalWrite(9, LOW);
//     digitalWrite(10, LOW);
         digitalWrite(11, LOW);

    while (digitalRead(sw_2) == LOW);

    delay (100);
  }
  if (escSerial_2 == true)
  {
    escSerial_2 = false;
    Serial.print(encoder_2, DEC);
    Serial.print(",");
    Serial.print(encoder_1, DEC);
    Serial.print(",");
    Serial.print(sw_1_counter);
    Serial.print(",");
    Serial.println(sw_2_counter);
  }

  digitalWrite(9, HIGH);
  digitalWrite(10, HIGH);
  digitalWrite(11, HIGH);

}

void clk_1_int (void)
{
  // digitalWrite(9, LOW);
  //digitalWrite(10, LOW);
  //digitalWrite(11, LOW);

  if (digitalRead(dt_1) == HIGH)
  {
    encoder_1 ++ ;
    digitalWrite(9, LOW);
  } else {
    encoder_1 -- ;
    digitalWrite(10, LOW);
  }
  escSerial_1 = true;
}

void clk_2_int (void)
{
  //digitalWrite(9, LOW);
  //digitalWrite(10, LOW);
  //digitalWrite(11, LOW);

  if (digitalRead(dt_2) == HIGH)
  {
    encoder_2 ++ ;
    digitalWrite(9, LOW);
  } else {
    encoder_2 -- ;
    digitalWrite(10, LOW);
  }
  escSerial_2 = true;
}
