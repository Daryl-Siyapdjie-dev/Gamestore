import 'package:flutter/material.dart';
import 'package:projeti/models/game.dart';

class NewestSection extends StatelessWidget {
  NewestSection({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
          children: games
              .map((game) => Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
                ),                
                child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(game.icon,
                        width: 60,
                        height: 60,),
                      ),
                     const  SizedBox(width: 10),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            game.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Column(
                               
                                children: [
                                  Text(
                                    game.type,
                                    style: TextStyle(
                                      color: Colors.grey.withOpacity(0.8),
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                      size: 15,
                                      color: Colors.amber
                                      ,),
                                       Icon(
                                        Icons.star,
                                      size: 15,
                                      color: Colors.amber
                                      ,),
                                       Icon(
                                        Icons.star,
                                      size: 15,
                                      color: Colors.amber
                                      ,),
                                       Icon(
                                        Icons.star,
                                      size: 15,
                                      color: Colors.amber
                                      ,),
                                       Icon(
                                        Icons.star,
                                      size: 15,
                                      color: Colors.grey
                                      ,),
                                    ],
                                  ),
                                ],

                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 15
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF5F67EA),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Text('Install', style: TextStyle(
                                  color: Colors.white,
                                ),
                                ),
                              )
                            ],
                            )
                        ],
                      )
                      )
                    ],
                  ),
                  ),
              )
              .toList()),
    );
  }
}
