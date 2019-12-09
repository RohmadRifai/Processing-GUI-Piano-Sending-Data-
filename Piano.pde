import ddf.minim.analysis.*;
import ddf.minim.*;
import ddf.minim.signals.*;
import processing.serial.*;
 
Minim minim;
AudioOutput out;
Serial port;
int spazio = 50;
int value;

void setup()
{
  size(400, 400);
  String portName = Serial.list()[0];
  port = new Serial(this, portName, 9600);
  minim = new Minim(this);
  out = minim.getLineOut(Minim.STEREO);
}
 
void draw()
{
  background(0);
  stroke(0);
  for (int x = 0; x <= width; x = x + spazio ){
    fill(255);
    rect(x - 50,0,x,height);
  }
  fill(0);
  rect(35, 0, 30, 250);
  rect(85, 0, 30, 250);
  rect(185, 0, 30, 250);
  rect(235, 0, 30, 250);
  rect(285, 0, 30, 250);
  rect(385, 0, 30, 250);
}

void mousePressed(){
  SineWave mySine;
  MyNote newNote;
  float pitch = 0;
  
  // do
  if (mouseX < 35 && mouseY < 250 || mouseX < 50 && mouseY > 250){
    //song = minim.loadFile("Do1.mp3");
    //song.play();
    pitch = 262;
    value = 0;
    //println('1');
    port.write("#21!");
    
  }
  
  //re
  if (mouseX > 65 && mouseX < 85 && mouseY < 250 || mouseY > 250 && mouseX > 50 && mouseX < 100){
    //song = minim.loadFile("Re1.mp3");
    //song.play();
    pitch = 294;
    value = 1;
    //println('2');
    port.write("#22!");
  }
  //if (mouseY > 250 && mouseX > 50 && mouseX < 100 || value == 1){
  //  //song = minim.loadFile("Re1.mp3");
  //  //song.play();
  //  pitch = 294;
  //  value = 0;
  //  println('2');
  //}
  
  //mi
  if (mouseX > 115 && mouseX < 150 && mouseY < 250 || mouseY > 250 && mouseX > 100 && mouseX < 150){
    //song = minim.loadFile("Mi1.mp3");
    //song.play();
    pitch = 330;
    value = 2;
    //println('3');
    port.write("#23!");
  }
  //if ( mouseY > 250 && mouseX > 100 && mouseX < 150 || value == 2){
  //  //song = minim.loadFile("Mi1.mp3");
  //  //song.play();
  //  pitch = 330;
  //  value = 0;
  //  println('3');
  //}
  
  //fa
  if (mouseX > 150 && mouseX < 185 && mouseY < 250 || mouseY > 250 && mouseX > 150 && mouseX < 200){
    //song = minim.loadFile("Fa1.mp3");
    //song.play();
    pitch = 349;
    value = 3;
    //println('4');
    port.write("#24!");
  }
  //if (mouseY > 250 && mouseX > 150 && mouseX < 200 || value == 3){
  //  //song = minim.loadFile("Fa1.mp3");
  //  //song.play();
  //  pitch = 349;
  //  value = 0;
  //  println('4');
  //}
  
  //sol
  if (mouseX > 215 && mouseX < 235 && mouseY < 250 || mouseY > 250 && mouseX > 200 && mouseX < 250){
    //song = minim.loadFile("Sol1.mp3");
    //song.play();
    pitch = 392;
    value = 4;
    //println('5');
    port.write("#25!");
  }
  //if (mouseY > 250 && mouseX > 200 && mouseX < 250 || value == 4){
  //  //song = minim.loadFile("Sol1.mp3");
  //  //song.play();
  //  pitch = 392;
  //  value = 0;
  //  println('5');
  //}
  
  //la
  if (mouseX > 265 && mouseX < 285 && mouseY < 250 || mouseY > 250 && mouseX > 250 && mouseX < 300){
    //song = minim.loadFile("La1.mp3");
    //song.play();
    pitch = 440;
    value = 5;
    //println('6');
    port.write("#26!");
  }
  //if (mouseY > 250 && mouseX > 250 && mouseX < 300 || value == 5){
  //  //song = minim.loadFile("La1.mp3");
  //  //song.play();
  //  pitch = 440;
  //  value = 0;
  //  println('6');
  //}
  
  
  //si 
  if (mouseX > 315 && mouseX < 350 && mouseY < 250 || mouseY > 250 && mouseX > 300 && mouseX < 350){
    //song = minim.loadFile("Si1.mp3");
    //song.play();
    pitch = 494;
    value = 6;
    //println('7');
    port.write("#27!");
  }
  //if (mouseY > 250 && mouseX > 300 && mouseX < 350 || value == 6){
  //  //song = minim.loadFile("Si1.mp3");
  //  //song.play();
  //  pitch = 494;
  //  value = 0;
  //  println('7');
  //}
  
  //do2
  if (mouseX > 350 && mouseX < 385 && mouseY < 250 || mouseY > 250 && mouseX > 350 && mouseX < 400){
    //song = minim.loadFile("Do2.mp3");
    //song.play();
    pitch = 523;
    value = 7;
    //println('8');
    port.write("#28!");
  }
  //if (mouseY > 250 && mouseX > 350 && mouseX < 400 || value == 7){
  //  //song = minim.loadFile("Do2.mp3");
  //  //song.play();
  //  pitch = 523;
  //  value = 0;
  //  println('8');
  //}
  
  // I bemolli
  //do#
  if ( mouseX > 35 && mouseX < 65 && mouseY < 250){
    //song = minim.loadFile("Do#1.mp3");
    //song.play();
    pitch = 277;
    //port.write("#11!");
  }
  //re#
  
  if ( mouseX > 85 && mouseX < 115 && mouseY < 250){
    //song = minim.loadFile("Re#1.mp3");
    //song.play();
    pitch = 311;
    //port.write("#12!");
  }
  // fa#
  if ( mouseX > 185 && mouseX < 215 && mouseY < 250){
    //song = minim.loadFile("Fa#1.mp3");
    //song.play();
    pitch = 370;
    //port.write("#13!");
  }
  // sol#
  if ( mouseX > 235 && mouseX < 265 && mouseY < 250){
    //song = minim.loadFile("Sol#1.mp3");
    //song.play();
    pitch = 415;
    //port.write("#14!");
  }
  //la#
  if ( mouseX > 285 && mouseX < 315 && mouseY < 250){
    //song = minim.loadFile("La#1.mp3");
    //song.play();
    pitch = 466;
    //port.write("#15!");
  }
  if (pitch > 0) {
      newNote = new MyNote(pitch, 0.2);
   }

}


void stop()
{
  out.close();
  minim.stop();
 
  super.stop();
}

class MyNote implements AudioSignal
{
     private float freq;
     private float level;
     private float alph;
     private SineWave sine;
     
     MyNote(float pitch, float amplitude)
     {
         freq = pitch;
         level = amplitude;
         sine = new SineWave(freq, level, out.sampleRate());
         alph = 0.9;
         out.addSignal(this);
     }

     void updateLevel()
     {
         level = level * alph;
         sine.setAmp(level);
         
         if (level < 0.01) {
             out.removeSignal(this);
         }
     }
     
     void generate(float [] samp)
     {
         sine.generate(samp);
         updateLevel();
     }
     
    void generate(float [] sampL, float [] sampR)
    {
        sine.generate(sampL, sampR);
        updateLevel();
    }

}
