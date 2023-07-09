import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stavax/screen/musicplaying.dart';
import '../screen/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Stavax',
      home: Home(),
    );
  }
}