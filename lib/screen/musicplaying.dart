import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stavax/constants/colors.dart';
import 'package:stavax/model/songsList.dart';

class musicplaying extends StatefulWidget {
  final SongsList listSongs;
  const musicplaying({Key? key, required this.listSongs}) : super(key: key);

  @override
  State<musicplaying> createState() => _musicplayingState();
}

class _musicplayingState extends State<musicplaying> {
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
                _buildAppBar(),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.listSongs.image,
                      width: 290,
                      height: 290,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(23),
                topRight: Radius.circular(23),
              ),
              child: Container(
                width: 420,
                height: 304,
                child: Column(
                  children: [
                    SizedBox(
                      height: 58,
                    ),
                    Text(
                      widget.listSongs.title,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      widget.listSongs.artist,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 259.5,
                          height: 5,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 5,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF3373B0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 95),
                          height: 5,
                          width: 6,
                          decoration: BoxDecoration(
                            color: Color(0xFF0B385F),
                            // shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 43,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.loop_sharp,
                          color: Colors.black,
                          size: 42,
                        ),
                        Icon(
                          Icons.skip_previous_sharp,
                          color: Colors.black,
                          size: 50,
                        ),
                        Icon(
                          Icons.play_arrow_sharp,
                          color: Colors.black,
                          size: 50,
                        ),
                        Icon(
                          Icons.skip_next_sharp,
                          color: Colors.black,
                          size: 50,
                        ),
                        Icon(
                          Icons.shuffle_sharp,
                          color: Colors.black,
                          size: 42,
                        ),
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xff004e96),
                ),
              ),
            ),
          )
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
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            ),
          ),
          Text(
            "Now Playing",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              // showDialog(
              //   context: context,
              //   builder: (BuildContext context) {
              //     return AlertDialog(
              //         backgroundColor:
              //             Colors.blue, // Set the background color to blue
              //         content: ListView(
              //           children: [Text("ini vutton")],
              //         ));
              //   },
              // ); tar edit lagi
            },
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
