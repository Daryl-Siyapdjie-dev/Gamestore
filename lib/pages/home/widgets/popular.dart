import 'package:flutter/material.dart';
import 'package:projeti/models/game.dart';
import 'package:projeti/pages/detail/widgets/detail.dart';

class PopularSection extends StatelessWidget {
   PopularSection({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
            onTap: (()=> Navigator.of(context).push(MaterialPageRoute(builder: ((context)=>DetailGame(games[index]))))),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                
              ),
              child: Container(
                padding: EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Hero(tag: games[index].name,
                  child: Image.asset(games[index].bgImage),
                   ),
                ),
              ),
              
              ),
          )),
          separatorBuilder: ((context,index)=> const SizedBox( width: 10,)),
          itemCount: games.length),
    );
  }
}
