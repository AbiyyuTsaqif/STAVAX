import 'package:flutter/material.dart';
import 'package:stavax/constants/colors.dart';
import 'package:stavax/model/playlisthome.dart';
<<<<<<< HEAD
=======
import 'package:stavax/screen/detailedPlaylist.dart';
>>>>>>> 97508684a44ebd2c336a2fcf86ef84de110129fe

class playlistScreen extends StatefulWidget {
  const playlistScreen({super.key});

  @override
  State<playlistScreen> createState() => _playlistScreenState();
}

class _playlistScreenState extends State<playlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 34,
              ),
            ),
            Text(
              "Your playlist",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 34,
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 24),
        child: Column(
          children: [
            searchBox(),
            SizedBox(
              height: 26,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: playlistHome_list.length,
                  itemBuilder: (context, index) {
                    if (index <= playlistHome_list.length) {
                      final iniplaylist = playlistHome_list[index];
                      return _buildPlaylistScreen(iniplaylist: iniplaylist);
                    }
                  }),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.add_circle,
                size: 70,
                color: Colors.blue,
              ),
            )
          ],
        ),
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
}

class _buildPlaylistScreen extends StatefulWidget {
  final PlaylistHome iniplaylist;
  const _buildPlaylistScreen({Key? key, required this.iniplaylist})
      : super(key: key);

  @override
  State<_buildPlaylistScreen> createState() => __buildPlaylistScreenState();
}

class __buildPlaylistScreenState extends State<_buildPlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(right: 8),
          height: 68,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                widget.iniplaylist.image,
                height: 70,
                width: 70,
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.iniplaylist.title,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      widget.iniplaylist.subtitle,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
