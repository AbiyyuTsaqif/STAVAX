class SongsList {
  int id;
  String title;
  String artist;
  String image;

  SongsList({
    required this.id,
    required this.title,
    required this.artist,
    required this.image,
  });
}

var songsList_list = [
  SongsList(
    id: 1,
    title: "Flaming Hot Cheetos",
    artist: "Clairo",
    image: "assets/musicplaying/1.png",
  ),
  SongsList(
    id: 2,
    title: "Like i need you",
    artist: "Keshi",
    image: "assets/musicplaying/2.png",
  ),
  SongsList(
    id: 3,
    title: "Listerine",
    artist: "Dayglow",
    image: "assets/musicplaying/3.png",
  ),
  SongsList(
    id: 4,
    title: "Crying Over You",
    artist: "HONNE, BEKA",
    image: "assets/musicplaying/4.png",
  ),
];
