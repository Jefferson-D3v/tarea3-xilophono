import 'package:audioplayers/audioplayers.dart';

void notaMusical(int sonido) {
  final player = AudioPlayer();
  player.play(AssetSource("audios/note$sonido.wav"));
}
