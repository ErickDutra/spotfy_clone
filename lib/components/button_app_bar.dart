import 'package:flutter/material.dart';

class MyButtonBar extends StatelessWidget {
  const MyButtonBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2.5),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "All",
                style: TextStyle(
                  color: Color.fromRGBO(18, 18, 18, 1),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => Color.fromRGBO(30, 215, 96, 1),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2.5),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Music",
                style: TextStyle(
                  color: Color.fromRGBO(243, 243, 243, 1),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => Color.fromRGBO(34, 34, 34, 1),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2.5),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Podcasts",
                style: TextStyle(
                  color: Color.fromRGBO(243, 243, 243, 1),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => Color.fromRGBO(34, 34, 34, 11),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
