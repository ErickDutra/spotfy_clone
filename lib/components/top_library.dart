import 'package:flutter/material.dart';

class TopLibrary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Your Library',style:TextStyle(color: Colors.white)),
          Container(
            child: Row(
              children: [
                Icon(Icons.search),
                Icon(Icons.add)
              ],
            ),
          )
        ],
      ),
    );
  }
}
