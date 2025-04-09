import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class AudioManager {
  const AudioManager({required this.player});

  final AudioPlayer player;

  void play(String url, {String? word}) async {


    try {
    await player.stop();
    await player.play(UrlSource(url));
    } catch (e) {
      debugPrint("Error $e");
      
    }
  }
}
