import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:stavax/model/recentlyPlayedHome.dart';
import 'package:stavax/model/songsList.dart';
import 'package:stavax/screen/playlistScreen.dart';
import 'package:stavax/screen/search.dart';
import 'package:stavax/widgets/recentlyPlayed_home.dart';
import '../widgets/playlist_home.dart';
import '../constants/colors.dart';
import '../model/playlisthome.dart';
import '../widgets/recentlyPlayed_home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final playlistvar_ = PlaylistHome.playlist_home();
  final recentlyPlayedvar_ = recentlyPlayedHome.recentlyPlayed_home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      _buildAppBar(),
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: const Text(
                          "Your Playlist",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      _buildPlayList(),
                      Container(
                        width: double.infinity,
                        height: 45,
                        decoration: BoxDecoration(
                          color: color2,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                          ),
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => (playlistScreen()),
                                ),
                              );
                            },
                            child: Container(
                                width: 123,
                                height: 26,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF76BCFF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                child: Center(
                                  child: Text(
                                    'View Playlist',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: const Text(
                          "Recently Played",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      _recentlyPlayed()
                    ],
                  ),
                )
              ],
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: ClipRRect(child: Container()),
          // )
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 25,
      ),
      decoration: BoxDecoration(color: color1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Hello, Your Name",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const search_screen()),
              );
            },
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          // IconButton(
          //   Icons.search,
          //   onPressed: () {},
          //   color: Colors.white,
          // ),
        ],
      ),
    );
  }

  Widget _buildPlayList() {
    return Container(
      padding: EdgeInsets.all(8),
      width: 300,
      height: 226,
      decoration: BoxDecoration(
        color: color2,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14), topRight: Radius.circular(14)),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: playlistHome_list
            .length, // Set the itemCount to the length of your list
        itemBuilder: (context, index) {
          if (index >= playlistHome_list.length) {
            return null; // Return null if the index is out of range
          }
          final PlaylistHome list = playlistHome_list[index];
          return playlist_home(iniplaylist: list);
        },

        // children: <Widget>[

        //   return
        // for (PlaylistHome iniPlaylist_ in playlistvar_)
        //   playlist_home(
        //     iniplaylist: iniPlaylist_,
        //   ),
        // ],
      ),
    );
  }

  Widget _recentlyPlayed() {
    return Container(
      padding: EdgeInsets.all(8),
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: color2,
      ),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: songsList_list
            .length, // Set the itemCount to the length of your list
        itemBuilder: (context, index) {
          if (index >= songsList_list.length) {
            return null; // Return null if the index is out of range
          }
          final SongsList list = songsList_list[index];
          return recentlyPlayed_home(inirecent: list);
        },
      ),
    );
  }
}
