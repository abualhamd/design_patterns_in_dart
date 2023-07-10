// Target interface
abstract class MediaPlayer {
  void play(String audioType, String fileName);
}

// Adaptee class
class VLCPlayer {
  void playVLC(String fileName) {
    print("Playing VLC file: $fileName");
  }
}

// Adapter class
class VLCPlayerAdapter implements MediaPlayer {
  VLCPlayer vlcPlayer;
  VLCPlayerAdapter(this.vlcPlayer);
  @override
  void play(String audioType, String fileName) {
    if (audioType.toLowerCase() == "vlc") {
      vlcPlayer.playVLC(fileName);
    }
  }
}

// Client code
void main() {
  MediaPlayer mediaPlayer = VLCPlayerAdapter(VLCPlayer());
  mediaPlayer.play("VLC", "song.vlc");
}
