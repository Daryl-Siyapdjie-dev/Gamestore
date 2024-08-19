import 'package:flutter/material.dart';
import 'package:projeti/models/game.dart';
import 'package:projeti/pages/detail/ReviewSection.dart';
import 'package:projeti/pages/detail/widgets/DescriptionSection.dart';
import 'package:projeti/pages/detail/widgets/GallerySection.dart';
import 'package:projeti/pages/detail/widgets/header.dart';


class GameInfo extends StatelessWidget {
  final Game game;

  const GameInfo(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          HeaderSection(game),
          GallerySection(game),
          DescriptionSection(game),
          ReviewSection(game)
        ],
      ),
    );
  }
}
