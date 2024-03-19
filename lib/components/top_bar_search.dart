import 'package:flutter/material.dart';

class TopSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Search',style:TextStyle(color: Colors.white)),
          Container(height: 24, child: Image.asset('assets/camera.png')),
        ],
      ),
    );
  }
}