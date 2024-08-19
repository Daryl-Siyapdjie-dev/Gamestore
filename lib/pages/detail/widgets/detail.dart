import 'package:flutter/material.dart';
import 'package:projeti/models/game.dart';
import 'package:projeti/pages/detail/widgets/DetailSliverDelegate.dart';
import 'package:projeti/pages/detail/widgets/GameInfo.dart';

class DetailGame extends StatelessWidget {
   const DetailGame(this.game, {super.key});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(delegate: DetailSliverDelegate(
            game: game,
            expandedHeight: 360,
            roundedContainerHeight: 30
            ),
            ),
              SliverToBoxAdapter(
            child: GameInfo(game),
          )
        ],
         
        
      ),
    
    );
  }
}
