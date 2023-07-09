import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stavax/model/recentlyPlayedHome.dart';
import '../constants/colors.dart';

class recentlyPlayed_home extends StatelessWidget {
  final recentlyPlayedHome inirecent;
  const recentlyPlayed_home({Key? key, required this.inirecent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        splashColor:
        Colors.grey;
        print("object : ");
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(10), // Add padding to the container
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset(
                inirecent.image!,
                width: 56,
                height: 56,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  inirecent.title!,
                  style: TextStyle(
                    height: 2,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  inirecent.Artist!,
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
        width: 314,
        height: 76,
        decoration: BoxDecoration(
          color: color3,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
