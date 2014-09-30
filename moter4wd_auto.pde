int EN1  = 6;   
int IN1  = 7;
int EN2  = 5;                         
int IN2  = 4;                           

void Motor1(int pwm, boolean reverse) 
{
  analogWrite(EN1,pwm); //set pwm control, 0 for stop, and 255 for maximum speed 
  if(reverse) 
  {
    digitalWrite(IN1,HIGH);  
  }
  else
  {
    digitalWrite(IN1,LOW); 
  }
}

void Motor2(int pwm, boolean reverse)
{
  analogWrite(EN2,pwm);
  if(reverse)
  {
    digitalWrite(IN2,HIGH); 
  }
  else
  {
    digitalWrite(IN2,LOW); 
  }
}

void setup() 
{ 
    int i; 
    for(i=5;i<=8;i++) 
    pinMode(i, OUTPUT);
    
    //Serial.begin(19200);  
} 

void loop() 
{ 
  int x,delay_en; 
        Motor1(250,true);  //You can change the speed, such as Motor(50,true) 
        Motor2(250,true); 
        delay(10000);
        Motor1(200,false); 
        Motor2(200,true); 
        delay(1000);
        Motor1(50,true); 
        Motor2(50,true);  
        delay(1000);   
        Motor1(250,true);  //You can change the speed, such as Motor(50,true) 
        Motor2(250,true);  
        delay(10000);
        Motor1(200,true); 
        Motor2(200,false); 
        delay(1000);
        Motor1(50,true); 
        Motor2(50,true);
        delay(1000);   
        Motor1(250,true);  //You can change the speed, such as Motor(50,true) 
        Motor2(250,true);  
        delay(10000);        
               
        
  /*
  char val; 
  while(1) 
  {
    val = Serial.read(); 
    if(val!=-1) 
    {
      switch(val) 
      {
        case 'w'://Move ahead 
        Motor1(250,true);  //You can change the speed, such as Motor(50,true) 
        Motor2(250,true); 
        break;
        
        case 'x'://move back 
        Motor1(250,false); 
        Motor2(250,false); 
        break;    
        
        case 'l'://turn left 
        Motor1(200,false); 
        Motor2(200,true); 
        delay(1000);
        Motor1(50,false); 
        Motor2(50,false);                 
        break;
        
        case 'r'://turn right 
        Motor1(200,true); 
        Motor2(200,false); 
        delay(1000);
        Motor1(50,false); 
        Motor2(50,false);         
        break;
        
        case 's'://stop 
        Motor1(0,false); 
        Motor2(0,false); 
        break;
      }
    }    
  }
  */
}

