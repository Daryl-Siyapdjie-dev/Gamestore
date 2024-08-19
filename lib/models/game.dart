class Game {
  String bgImage;
  String icon;
  String name;
  String type;
  num scrore;
  num download;
  num review;
  String description;
  List<String> images;

  Game(
    this.bgImage,
    this.icon,
    this.name,
    this.type,
    this.scrore,
    this.download,
    this.review,
    this.description,
    this.images,
  );

  static List<Game> games() {
    return [
      Game(
        'assets/images/teken.jpg',
        'assets/images/tekenp.jpg',
        'Tenken',
        'Combat',
        4.8,
        270,
        270,
        'teken is the best game of word every bordy like this game',
        [
          'assets/images/teken.jpg',
          'assets/images/tekenp.jpg',
        ],
      ),
      Game(
        'assets/images/godofwar.jpg',
        'assets/images/godofwar.jpg',
        'God Of War',
        'Combat',
        4.8,
        270,
        270,
        'God Of War is the best game of word every bordy like this game',
        [
          'assets/images/godofwar.jpg',
          'assets/images/godofwar.jpg',
        ],
      ),
    ];
  }
}
