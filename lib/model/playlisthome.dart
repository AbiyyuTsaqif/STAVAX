// class PlaylistHome {
//   int? id;
//   String? title;
//   String? subtitle;
//   String? image;

//   PlaylistHome({
//     required this.id,
//     required this.title,
//     required this.subtitle,
//     required this.image,
//   });

//   static List<PlaylistHome> playlist_home() {
//     return [
//       PlaylistHome(
//         id: 1,
//         title: 'Morning Work',
//         subtitle: 'A cup of coffe can heals ur souls ...',
//         image: 'assets/1.png',
//       ),
//       PlaylistHome(
//         id: 2,
//         title: 'Lazy Sunday',
//         subtitle: 'This is Sunday, so dont do anything ...',
//         image: 'assets/2.png',
//       ),
//       PlaylistHome(
//         id: 3,
//         title: 'night RnB',
//         subtitle: 'Night Chill, w d lamp',
//         image: 'assets/3.png',
//       ),
//       PlaylistHome(
//         id: 4,
//         title: 'Sigma male',
//         subtitle: 'The music that made u an alpha male ...',
//         image: 'assets/4.png',
//       ),
//       PlaylistHome(
//         id: 5,
//         title: 'Night vibes',
//         subtitle: 'Only the depressed one can hear this',
//         image: 'assets/5.png',
//       ),
//       PlaylistHome(
//         id: 6,
//         title: 'That Feels',
//         subtitle: 'That feels that i wont forget',
//         image: 'assets/6.png',
//       ),
//       PlaylistHome(
//         id: 7,
//         title: 'UPBEAT!!',
//         subtitle: 'just up beat, nothing special',
//         image: 'assets/7.png',
//       ),
//     ];
//   }
// }

import 'package:stavax/model/playlistSong1.dart';

class PlaylistHome {
  int id;
  String title;
  String subtitle;
  String image;
  List<playListSong> songList;

  PlaylistHome(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.songList});
}

var playlistHome_list = [
  PlaylistHome(
<<<<<<< HEAD
    id: 1,
    title: 'Morning Work',
    subtitle:
        'A cup of coffe can heals ur souls accompanied with a chill songs to heal your sould in the morning shine',
    image: 'assets/1.png',
  ),
=======
      id: 1,
      title: 'Morning Work',
      subtitle:
          'A cup of coffe can heals ur souls accompanied with a chill songs to heal your sould in the morning shine',
      image: 'assets/playlistList/1.png',
      songList: [
        playListSong(
            title: "Flaming Hot Cheetos",
            Artist: "Clairo",
            image: "assets/playlist1/playlist1_gambar1.jpg"),
        playListSong(
            title: "Like I Need You",
            Artist: "Keshi",
            image: "assets/playlist1/playlist1_gambar2.jpg"),
        playListSong(
            title: "505",
            Artist: "Arctic Monkeys",
            image: "assets/playlist1/playlist1_gambar3.jpg")
      ]),
>>>>>>> 97508684a44ebd2c336a2fcf86ef84de110129fe
  PlaylistHome(
      id: 2,
      title: 'Lazy Sunday',
      subtitle: 'This is Sunday, so dont do anything ...',
      image: 'assets/playlistList/2.png',
      songList: [
        playListSong(
            title: "Runaway",
            Artist: "Aurora",
            image: "assets/playlist2/playlist2_gambar1.jpg"),
        playListSong(
            title: "Location Unknown",
            Artist: "HONNE",
            image: "assets/playlist2/playlist2_gambar2.jpg"),
        playListSong(
            title: "Listerine",
            Artist: "Dayglow",
            image: "assets/playlist2/playlist2_gambar3.jpg"),
      ]),
  PlaylistHome(
      id: 3,
      title: 'night RnB',
      subtitle: 'Night Chill, w d lamp',
      image: 'assets/playlistList/3.png',
      songList: [
        playListSong(
            title: "Duvet",
            Artist: "Boa",
            image: "assets/playlist3/playlist3_gambar1.jpg"),
        playListSong(
            title: "Shut Up My Mom's calling",
            Artist: "Hotel Ugly",
            image: "assets/playlist3/playlist3_gambar2.jpg"),
        playListSong(
            title: "Moonlight",
            Artist: "Kali Uchis",
            image: "assets/playlist3/playlist3_gambar3.jpg"),
      ]),
  PlaylistHome(
      id: 4,
      title: 'Sigma male',
      subtitle: 'The music that made u an alpha male ...',
      image: 'assets/playlistList/4.png',
      songList: [playListSong(title: "", Artist: "", image: "")]),
  PlaylistHome(
      id: 5,
      title: 'Night vibes',
      subtitle: 'Only the depressed one can hear this',
      image: 'assets/playlistList/5.png',
      songList: [playListSong(title: "", Artist: "", image: "")]),
  PlaylistHome(
      id: 6,
      title: 'That Feels',
      subtitle: 'That feels that i wont forget',
      image: 'assets/playlistList/6.png',
      songList: [playListSong(title: "", Artist: "", image: "")]),
  PlaylistHome(
      id: 7,
      title: 'UPBEAT!!',
      subtitle: 'just up beat, nothing special',
      image: 'assets/playlistList/7.png',
      songList: [playListSong(title: "", Artist: "", image: "")]),
];
