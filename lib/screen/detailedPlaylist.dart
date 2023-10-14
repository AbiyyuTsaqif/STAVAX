import 'package:flutter/material.dart';
import 'package:stavax/constants/colors.dart';
import 'package:stavax/model/playlistSong1.dart';
import 'package:stavax/model/playlisthome.dart';

class detailedPlaylist extends StatefulWidget {
  final PlaylistHome iniPlaylist;
  const detailedPlaylist({Key? key, required this.iniPlaylist})
      : super(key: key);

  @override
  State<detailedPlaylist> createState() => _detailedPlaylistState();
}

class _detailedPlaylistState extends State<detailedPlaylist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 32,
            ),
            Image.asset(
              widget.iniPlaylist.image,
              height: 128,
              width: 128,
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              widget.iniPlaylist.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              widget.iniPlaylist.subtitle,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.iniPlaylist.songList.length,
                itemBuilder: ((context, index) {
                  if (index <= widget.iniPlaylist.songList.length) {
                    return listPlaylistSong(
                        iniplaylistSong: widget.iniPlaylist.songList[index]);
                  }
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class listPlaylistSong extends StatelessWidget {
  final playListSong iniplaylistSong;
  const listPlaylistSong({Key? key, required this.iniplaylistSong})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
          width: double.infinity,
          height: 82,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Color(0xff004e96),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Image.asset(iniplaylistSong.image),
                    SizedBox(
                      width: 11,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          iniplaylistSong.title,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          iniplaylistSong.Artist,
                          style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Icon(
                Icons.more_vert,
                size: 30,
                color: Colors.white,
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
