import 'package:flutter/material.dart';
import 'package:music_player/activity/musiclist.dart';
import 'package:music_player/activity/player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: "/",
      routes: {
        "/": (context) => Music_List(),
        "/player": (context) => Player(),
      },
    );
  }
}
