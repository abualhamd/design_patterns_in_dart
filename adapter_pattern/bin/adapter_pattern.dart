enum AudioType {
  vlc,
  blabla,
}

abstract class MediaPlayer {
  void play(AudioType audioType, String fileName);
}

class VLCPlayer {
  void playVLC(String fileName) {
    print("Playing VLC file: $fileName");
  }
}

class VLCAdapter implements MediaPlayer {
  final VLCPlayer _vlcPlayer;

  VLCAdapter({required VLCPlayer vlcPlayer}) : _vlcPlayer = vlcPlayer;
  @override
  void play(AudioType audioType, String fileName) {
    if (audioType == AudioType.vlc) {
      _vlcPlayer.playVLC(fileName);
    } else {
      print("Invalid audio type");
    }
  }
}

void main() {
  MediaPlayer mediaPlayer = VLCAdapter(vlcPlayer: VLCPlayer());
  mediaPlayer.play(AudioType.vlc, "song.vlc");
}
