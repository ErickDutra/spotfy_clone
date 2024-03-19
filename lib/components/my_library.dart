import 'package:flutter/material.dart';

class MyLibrary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("Playlists",style:TextStyle(color: Colors.white) ,),
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Color.fromRGBO(34, 34, 34, 1),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Podcasts",style:TextStyle(color: Colors.white) ,),
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Color.fromRGBO(34, 34, 34, 1),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Albums",
                style:TextStyle(color: Colors.white) ,),
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Color.fromRGBO(34, 34, 34, 1),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Artists",style:TextStyle(color: Colors.white) ,),
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Color.fromRGBO(34, 34, 34, 1),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Downloaded",style:TextStyle(color: Colors.white) ,),
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Color.fromRGBO(34, 34, 34, 11),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 7.0),
                      height: 18, child: Image.asset('assets/arrows.png')),
                    Text('Recent')
                  ],
                  
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7.0),
                  height: 18, child: Image.asset('assets/boxs.png')),
              ],
            ),
          ),
        ],


      ),
    );
  }
}
