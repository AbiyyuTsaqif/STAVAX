import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stavax/constants/colors.dart';
import 'package:stavax/model/songsList.dart';
import 'package:stavax/screen/musicplaying.dart';

class search_screen extends StatefulWidget {
  const search_screen({super.key});

  @override
  State<search_screen> createState() => _search_screenState();
}

class _search_screenState extends State<search_screen> {
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
                      searchBox(),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Recent searches",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // ListView.builder(
                      //     itemCount: display_list.length,
                      //     itemBuilder: (context, index) => ListTile(
                      //           title: Text(display_list[index].artist),
                      //         ))
                      ///////////////////////////////////////////////////////
                      // ListView(
                      //   scrollDirection: Axis.vertical,
                      //   children: [
                      //     Listlagu(),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20,
      ),
      decoration: BoxDecoration(color: color1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
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
          SizedBox(
            width: 10,
          ),
          Text(
            "Search",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      decoration:
          BoxDecoration(color: color3, borderRadius: BorderRadius.circular(20)),
      child: const TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(4),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget Listlagu() {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => musicplaying(),
        //   ),
        // );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.asset(
                    "assets/musicplaying/1.png",
                    width: 56,
                    height: 56,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ahhaaa",
                      style: TextStyle(
                        height: 2,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Clairo',
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        width: 314,
        height: 76,
        decoration: BoxDecoration(
          color: Color(0xff004e96),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  // static List<SongsList> main_song_list = [
  //   SongsList(
  //       id: 1, title: 'aaa', artist: '111', image: 'assets/musicplaying/1.png'),
  //   SongsList(
  //       id: 1, title: 'bbb', artist: '222', image: 'assets/musicplaying/2.png'),
  //   SongsList(
  //       id: 1, title: 'ccc', artist: '333', image: 'assets/musicplaying/3.png'),
  //   SongsList(
  //       id: 1, title: 'ddd', artist: '444', image: 'assets/musicplaying/4.png'),
  // ];

  // List<SongsList> display_list = List.from(main_song_list);

  // void updateList(String value) {
  //   setState(() {
  //     display_list = main_song_list
  //         .where((element) =>
  //             element.title!.toLowerCase().contains(value.toLowerCase()))
  //         .toList();
  //   });
  // }
}
