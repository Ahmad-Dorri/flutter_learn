import 'package:flutter/material.dart';
import 'package:langeek_flutter/di/service_locator.dart';
import 'package:langeek_flutter/utils/audio_manager.dart';

class Player extends StatefulWidget {
  const Player({super.key, required this.url});

  final String url;

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late AudioManager _audioManager;

  @override
  void initState() {
    _audioManager = locator<AudioManager>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _audioManager.play(widget.url);
      },
      icon: const Icon(Icons.volume_up),
    );
  }
}
