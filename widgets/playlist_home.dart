import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stavax/model/playlisthome.dart';
import '../constants/colors.dart';

class playlist_home extends StatelessWidget {
  final PlaylistHome iniplaylist;
  const playlist_home({Key? key, required this.iniplaylist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(10), // Add padding to the container
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter, // Align the image to the top center
            child: Image.asset(
              iniplaylist.image!,
              width: 100,
              height: 100,
            ),
          ),
          const SizedBox(
            height: 20,
          ), // Add vertical spacing between the image and text
          Text(
            iniplaylist.title!,
            style: TextStyle(
              height: 2, // Adjust the line height as desired
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            iniplaylist.subtitle!,
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
          ),
        ],
      ),
      width: 120,
      height: 148,
      decoration: BoxDecoration(
        color: color3,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
