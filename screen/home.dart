import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:stavax/model/recentlyPlayedHome.dart';
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
  final playlistvar_ = PlaylistHome.playlist_home();
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
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      _buildPlayList(),
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
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 40,
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
          Icon(
            Icons.search,
            color: Colors.white,
          ),
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
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          for (PlaylistHome iniPlaylist_ in playlistvar_)
            playlist_home(
              iniplaylist: iniPlaylist_,
            ),
        ],
      ),
    );
  }

  Widget _recentlyPlayed() {
    return Container(
      padding: EdgeInsets.all(8),
      width: 300,
      height: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: color2,
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          for (recentlyPlayedHome inirecent_ in recentlyPlayedvar_) //editttttt
            recentlyPlayed_home(
              inirecent: inirecent_,
            ),
        ],
      ),
    );
  }
}
