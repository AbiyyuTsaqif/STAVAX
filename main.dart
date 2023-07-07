import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stavax/model/playlisthome.dart';
import 'package:stavax/widgets/playlist_home.dart';
import '../constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final playlistvar_ = PlaylistHome.playlist_home();
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
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 300,
                        height: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: color2,
                        ),
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              padding: const EdgeInsets.all(
                                  10), // Add padding to the container
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset(
                                      "assets/1.png",
                                      width: 56,
                                      height: 56,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Listerine',
                                        style: TextStyle(
                                          height: 2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Dayglow",
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              width: 314,
                              height: 76,
                              decoration: BoxDecoration(
                                color: color3,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              padding: const EdgeInsets.all(
                                  10), // Add padding to the container
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset(
                                      "assets/1.png",
                                      width: 56,
                                      height: 56,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Listerine',
                                        style: TextStyle(
                                          height: 2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Dayglow",
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              width: 314,
                              height: 76,
                              decoration: BoxDecoration(
                                color: color3,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              padding: const EdgeInsets.all(
                                  10), // Add padding to the container
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset(
                                      "assets/1.png",
                                      width: 56,
                                      height: 56,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Listerine',
                                        style: TextStyle(
                                          height: 2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Dayglow",
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              width: 314,
                              height: 76,
                              decoration: BoxDecoration(
                                color: color3,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              padding: const EdgeInsets.all(
                                  10), // Add padding to the container
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset(
                                      "assets/1.png",
                                      width: 56,
                                      height: 56,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Listerine',
                                        style: TextStyle(
                                          height: 2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Dayglow",
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              width: 314,
                              height: 76,
                              decoration: BoxDecoration(
                                color: color3,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
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
}
