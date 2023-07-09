class recentlyPlayedHome {
  int? id;
  String? title;
  String? Artist;
  String? image;

  recentlyPlayedHome({
    required this.id,
    required this.title,
    required this.Artist,
    required this.image,
  });

  static List<recentlyPlayedHome> recentlyPlayed_home() {
    return [
      recentlyPlayedHome(
        id: 1,
        title: "Flaming Hot Cheetos",
        Artist: "Clairo",
        image: 'assets/recentlyplayed_home/1.png',
      ),
      recentlyPlayedHome(
        id: 3,
        title: "Like i need you",
        Artist: "Keshi",
        image: 'assets/recentlyplayed_home/3.png',
      ),
      recentlyPlayedHome(
        id: 4,
        title: "Listerine",
        Artist: "Dayglow",
        image: 'assets/recentlyplayed_home/4.png',
      ),
      recentlyPlayedHome(
        id: 4,
        title: "Criying over you",
        Artist: "HONNE, BEKA",
        image: "assets/recentlyplayed_home/2.png",
      ),
    ];
  }
}
