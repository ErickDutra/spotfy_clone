
import 'package:flutter/material.dart';
import 'package:spotfy_clone/components/box_playlist.dart';
import 'package:spotfy_clone/components/carrosel.dart';
import 'package:spotfy_clone/components/grid_gender.dart';

class MainHomePage extends StatefulWidget {
  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          GridGender(),
          CarroselImage(),
          BoxPlaylist(),
        ],
      ),
    )
    );
  }
}




