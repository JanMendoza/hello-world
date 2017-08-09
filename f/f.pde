PImage img;
float x1=200;
float x2=325; 
float x3=400;
float x4=275;

float t0=5;
float t1=200;
float t2=100;
float t3=75;
float t4=40;
float t5=250;
float t6=30;
float tb=75;
float cont=200;
float c1=100,c2=20,c3=288,c4=388,c5=150,c6=200;

float angulo = 2.0;
float incremento = 0.001;
float freq = 60;
float amplitud = 40;
float velocidad = 0.8;
float sinval = sin(angulo*freq)*amplitud;

void setup()
{
  randomSeed(0);
  background(255);
  size(600,600);
  img = loadImage("b.jpg");
}

void draw()
{
      image(img,0,0,width,height);
      angulo += incremento;
      fill(255,255,0);
      
      if(cont<width-(t1+t4))
      {        
        robot();
        bocai();
        ojoi();
        anti();
        cont++;
        x1++;
        x2++;
        x3++;
        x4++;
        
          if (key== 'w')
       {
         antiw();
       }
         
      }
      else
      {
        robot();
        bocar();
        ojor();
        antr();
        x1--;
        x2--;
        x3--;
        x4--;
        
           if (key== 'w')
       {
         antrw();
       }
      }
      
      if(x1<t4)
      {
        cont=x1;
        x1++;
        x2++;
        x3++;
        x4++;
      }
      
  if (keyPressed && (key==CODED))
  {
    if (keyCode== ALT & t1>50)
    {
       t0=t0-0.025;
       t1=t1-1;
       t2=t2-0.5;
       t3=t3-0.375;
       t4=t4-0.2;
       t6=t6-0.15;
       
       x2=x2-0.625;
       x3=x3-1;
       x4=x4-.375;
       
       c1=c1+1.42;
       c2=c2+1.85;
       c3=c3+0.5;
       c5=c5+1.2;
       c6=c6+0.975;
    }
    
    if (keyCode== SHIFT)
    {
       t0=t0+0.025;
       t1=t1+1;
       t2=t2+0.5;
       t3=t3+0.375;
       t4=t4+0.2;
       t6=t6+0.15;

       x2=x2+0.625;
       x3=x3+1;
       x4=x4+.375;
       
       c1=c1-1.42;
       c2=c2-1.85;
       c3=c3-0.5;
       c5=c5-1.2;
       c6=c6-0.975;
    }
  }
}

void robot()
{
  float sinval = sin(angulo*freq)*amplitud;
  float y1 = sinval+c1;
  float y3 = sinval+c3;
  float y4 = sinval+c4;
  
  //cabeza
  noStroke();
  fill(#457F5E);
  rect(x1,y1,t1,t1);
  
    //torzo
  fill(#6F8774);
  rect(x1,y3,t1,t2);
  
  //pie1
  fill(#A5C68F);
  rect(x1,y4,t3,t4);
  
  //pie2
  fill(#A5C68F);
  rect(x2,y4,t3,t4);
  
  //mano1
  rect(x1,y3,-t4,t3);
  
  //mano2
  rect(x3,y3,t4,t3);
  
    if (key=='e')
    {
       fill(#C91016);
       rect(x1,y1,t1,t1);
       
       if(cont<width-(t1+t4))
       {
         cejai();
       }
       else
       {
          cejar();
       }
    }
    
         if (key== 'w')
       {
        
         fill(#454545);
         rect(x1,y1,t1,t1);
         
         fill(#767676);
         rect(x1,y3,t1,t2);
         
         fill(#a6a6a6);
         rect(x1,y4,t3,t4);
         rect(x2,y4,t3,t4); 
         rect(x1,y3,-t4,t3); 
         rect(x3,y3,t4,t3);
       }
    
 if (keyPressed)
  {
    if (key== 'r')
       {
         fill(#C91016);
         rect(x1,y1,t1,t1);
         if(cont<width-(t1+t4))
         {
           rayoi();
           cejai();
         }
         else
         {
           rayor();
           cejar();
         }
       }
  }
    
}

void bocai()
{
  float sinval = sin(angulo*freq)*amplitud;
  float y6 = sinval+c6;
  fill(#ACC6CC);
  rect(x2,y6,t3,t6);
}

void bocar()
{
  float sinval = sin(angulo*freq)*amplitud;
  float y6 = sinval+c6; 
  fill(#ACC6CC);
  rect(x4,y6,-t3,t6);
}

void ojoi()
{
  float sinval = sin(angulo*freq)*amplitud;
  float y5 = sinval+c5; 
  fill(#F4F4F4);
  ellipse(x2,y5,t4,t4);
}

void ojor()
{
  float sinval = sin(angulo*freq)*amplitud;
  float y5 = sinval+c5; 
  fill(#F4F4F4);
  ellipse(x4,y5,t4,t4);
}

void anti()
{
  float sinval = sin(angulo*freq)*amplitud;
  float y2 = sinval+c2; 
  fill(#D13F3F);
  ellipse(x2,y2,t6,t6);
}

void antrw()
{
  float sinval = sin(angulo*freq)*amplitud;
  float y2 = sinval+c2; 
  fill(#858585);
  ellipse(x4,y2,t6,t6);
}

void antiw()
{
  float sinval = sin(angulo*freq)*amplitud;
  float y2 = sinval+c2; 
  fill(#858585);
  ellipse(x2,y2,t6,t6);
}

void antr()
{
  float sinval = sin(angulo*freq)*amplitud;
  float y2 = sinval+c2; 
  fill(#D13F3F);
  ellipse(x4,y2,t6,t6);
}

void cejai()
{
  float sinval = sin(angulo*freq)*amplitud;
  float y5= sinval+c5;
  
   fill(0);
   quad(x2-t0*2,y5-t0*6,x2+t0*8,y5-t0*3,x2+t0*8,y5,x2-t0*2,y5-t0*3);
   
}

void cejar()
{
  float sinval = sin(angulo*freq)*amplitud;
  float y5= sinval+c5;
  
   fill(0);
   quad(x4-t0*8,y5-t0*3,x4+t0*2,y5-t0*6,x4+t0*2,y5-t0*3,x4-t0*8,y5);
}

void rayoi()
{
  float sinval = sin(angulo*freq)*amplitud;
  float y5= sinval+c5;
  
   fill(#FF030B,85);
   triangle(x2,y5,x2+1000,y5-300,x2+1000,y5+300);
}

void rayor()
{
  float sinval = sin(angulo*freq)*amplitud;
  float y5= sinval+c5;
  
   fill(#FF030B,85);
   triangle(x4,y5,x4-1000,y5-300,x4-1000,y5+300);
}