import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotfy_clone/components/app_bar.dart';
import 'package:spotfy_clone/components/box_playlist.dart';
import 'package:spotfy_clone/components/carrosel.dart';
import 'package:spotfy_clone/components/grid_gender.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Color.fromRGBO(8, 8, 8, 1)),
        home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(8, 8, 8, 1), title: MyAppBar()),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          GridGender(),
          CarroselImage(),
          BoxPlaylist()
        ],
      ),
    );
  }
}
