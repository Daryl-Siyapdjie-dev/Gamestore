import 'package:flutter/material.dart';
import 'package:projeti/pages/home/widgets/categories.dart';
import 'package:projeti/pages/home/widgets/hearder.dart';
import 'package:projeti/pages/home/widgets/search.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9747FF),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(150, 100),
                child: Image.asset(
                  'assets/images/vector1.png',
                  width: 200,
                )),
            Positioned(
                right: 0,
                top: 200,
                child: Transform(
                    transform: Matrix4.identity()..rotateZ(20),
                    origin: const Offset(150, 100),
                    child: Image.asset(
                      'assets/images/vector1.png',
                      width: 200,
                    )
                  )
                ),
              Column(
              children: [
                const HeaderSection(),
                const SearchSection(),
                CategorieSection()
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }

  Widget NavigationBar() {
    return Container(
      color: const Color(0xFFF6F8FF),
      child:   Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            selectedItemColor: const Color(0xFF9747FF),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey.withOpacity(0.7),
            type: BottomNavigationBarType.fixed,
            items: [
                BottomNavigationBarItem(
                 label: 'Home',
                 icon: Container(
                   margin: const EdgeInsets.all(5),
                   padding: const EdgeInsets.all(5),
                   decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                 ),
                 child:  const Icon(
                   Icons.home_rounded,
                   size: 30,
                   color: Color(0xFF9747FF),
                 ),
              ),
            ),
            BottomNavigationBarItem(
                 label: 'Application',
                 icon: Container(
                   margin: const EdgeInsets.all(5),
                   padding: const EdgeInsets.all(5),
                   decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                 ),
                 child:  const Icon(
                   Icons.more_horiz_rounded,
                   size: 30,
                   color: Colors.grey,
                 ),
              ),
            ),
            BottomNavigationBarItem(
                 label: 'Film',
                 icon: Container(
                   margin: const EdgeInsets.all(5),
                   padding: const EdgeInsets.all(5),
                   decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                 ),
                 child:  const Icon(
                   Icons.play_arrow_rounded,
                   size: 30,
                   color: Colors.grey,
                 ),
              ),
            ),
            BottomNavigationBarItem(
                 label: 'Book',
                 icon: Container(
                   margin: const EdgeInsets.all(5),
                   padding: const EdgeInsets.all(5),
                   decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                 ),
                 child:  const Icon(
                   Icons.auto_stories_rounded,
                   size: 30,
                   color: Colors.grey,
                 ),
              ),
            ),

            ]),
        ),
      ),
      
     );
  }
}
