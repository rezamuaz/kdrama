import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class BetterPlayerWidget extends StatelessWidget {
  const BetterPlayerWidget({Key? key, required this.betterPlayerController})
      : super(key: key);
  final BetterPlayerController betterPlayerController;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 16 / 9,
        child: BetterPlayer(controller: betterPlayerController));
  }
}
