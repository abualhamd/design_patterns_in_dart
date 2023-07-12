// Target interface
abstract class MediaPlayer {
  void play(String audioType, String fileName);
  void pause(String audioType, String fileName);
  void stop(String audioType, String fileName);
  void rewind(String audioType, String fileName);
}

// Adaptee class
class VLCPlayer {
  void playVLC(String fileName) {
    print("Playing VLC file: $fileName");
  }

  void stopVLC(String fileName) {
    print("Stopping VLC file: $fileName");
  }

  void pauseVLC(String fileName) {
    print("Pausing VLC file: $fileName");
  }

  void rewindVLC(String fileName) {
    print("Rewinding VLC file: $fileName");
  }
}

// Adapter class
class VLCPlayerAdapter implements MediaPlayer {
  late VLCPlayer vlcPlayer;

  VLCPlayerAdapter(this.vlcPlayer);

  @override
  void play(String audioType, String fileName) {
    if (audioType.toLowerCase() == "vlc") {
      vlcPlayer.playVLC(fileName);
    }
  }
  
  @override
  void pause(String audioType, String fileName) {
    if(audioType.toLowerCase()== "vlc"){
      vlcPlayer.pauseVLC(fileName);
    }
  }
  
  @override
  void rewind(String audioType, String fileName) {
    if(audioType.toLowerCase()== "vlc"){
      vlcPlayer.pauseVLC(fileName);
    }
  }
  
  @override
  void stop(String audioType, String fileName) {
    if(audioType.toLowerCase()== "vlc"){
      vlcPlayer.rewindVLC(fileName);
    }
  }
}

// Client code