import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../block_buster.dart';
import '../config.dart';

class PlayArea extends RectangleComponent with HasGameReference<BlockBuster> {
  PlayArea()
      : super(
          paint: Paint()..color = const Color(0xfff2e8cf),
          children: [RectangleHitbox()],
        );

  @override
  Future<void> onLoad() async {
    size = Vector2(
      gameWidth,
      gameHeight,
    );
  }
}
