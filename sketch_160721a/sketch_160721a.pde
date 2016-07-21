import ddf.minim.*;       
Minim minim = new Minim(this); 
/**
 We're going to use BANANAS to stop and start songs. Different bananas will play different songs.
 If you haven't used the Makey Makey before, check out this guide before you start: http://makeymakey.com/howto.php
 
 1. Download a song from YouTube using: youtube-mp3.org
 2. Plug the Makey Makey into the bananas.
 3. Finish the Processing code below so that touching a banana will start and stop a song.
 **/

AudioPlayer Here;              //1. Change to the name of your song
boolean IsStopped = true;  
AudioPlayer Year;
boolean IsStopped2 = true;
void loadSongs() {
Here = minim.loadFile("here.mp3");  
Year = minim.loadFile("7.mp3");
//2. Drop mp3 onto this sketch and put its name here
}

void keyPressed() {

 if (keyCode == UP) {
     /* 3. If yellowSubmarineIsStopped, play it, and set yellowSubmarineIsStopped to false. */
   if(IsStopped == true){
     playSong(Here);
     IsStopped = false;
    } else {
    stopSong(Here);
    IsStopped= true;
    }
   
    /* 4. Otherwise, stop it, and set yellowSubmarineIsStopped to true. */
 }
  if (keyCode == DOWN) {
     /* 3. If yellowSubmarineIsStopped, play it, and set yellowSubmarineIsStopped to false. */
   if(IsStopped2 == true){
   playSong(Year);
     IsStopped2 = false;
   } else {
    stopSong(Year);
   IsStopped2= true;
    }
    /* 4. Otherwise, stop it, and set yellowSubmarineIsStopped to true. */
 } 
 

  /* 5. Add other songs for the other bananas. keyCode will tell you which banana was pressed. */
  println("you pressed " + keyCode);
}

void playSong(AudioPlayer song) {
  song.play();
}

void stopSong(AudioPlayer song)
{
  song.pause();
}

void draw() {}

void setup() {
  loadSongs();
}


