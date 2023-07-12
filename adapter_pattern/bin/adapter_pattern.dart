   
import 'package:adapter_pattern/adapter_pattern.dart';

void main() {
  MediaPlayer mediaPlayer = VLCPlayerAdapter(VLCPlayer());
  mediaPlayer.play("VLC", "song.vlc");
  mediaPlayer.pause("VLC", "media.Vlc");
  mediaPlayer.stop("VLC", "media.Vlc");
  mediaPlayer.rewind("VLC", "media.Vlc");

}