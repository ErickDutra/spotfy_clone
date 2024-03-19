import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotfy_clone/models/playlists_library.dart';

class MyLibrary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _playlists = [
      PlayList(
        image: 'assets/fly.jpg',
        title_1: 'Hora do Show',
        title_2: 'Mordecai',
      ),
      PlayList(
        image: 'assets/obito.jpg',
        title_1: 'Naruto',
        title_2: 'Obito',
      ),
      PlayList(
        image: 'assets/fly.jpg',
        title_1: 'Hora do Show',
        title_2: 'Mordecai',
      ),
      PlayList(
        image: 'assets/panic.jpg',
        title_1: 'Todo Mundo em Panico',
        title_2: 'Panico',
      ),
      PlayList(
        image: 'assets/fly.jpg',
        title_1: 'Hora do Show',
        title_2: 'Mordecai',
      ),
      PlayList(
        image: 'assets/panic.jpg',
        title_1: 'Todo Mundo em Panico',
        title_2: 'Panico',
      ),
      PlayList(
        image: 'assets/obito.jpg',
        title_1: 'Naruto',
        title_2: 'Obito',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Playlists",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Color.fromRGBO(34, 34, 34, 1),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Podcasts",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Color.fromRGBO(34, 34, 34, 1),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Albums",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Color.fromRGBO(34, 34, 34, 1),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Artists",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Color.fromRGBO(34, 34, 34, 1),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Downloaded",
                  style: TextStyle(color: Colors.white),
                ),
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
                        height: 18,
                        child: Image.asset('assets/arrows.png')),
                    Text('Recent')
                  ],
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 7.0),
                    height: 18,
                    child: Image.asset('assets/boxs.png')),
              ],
            ),
          ),
          Container(
            height: 500,
            child: ListView(scrollDirection: Axis.vertical, children: [
              Column(
                children: _playlists.map((ply) {
                  return Container(
                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 5.0, vertical: 2.0),
                                height: 80,
                                width: 80,
                                child: Image.asset(ply.image)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(child: Text(ply.title_1),),
                                    Container(child: Text(ply.title_2,
                                      style:TextStyle(color: Color.fromRGBO(102, 102, 102, 1),
                                      
                                      fontSize: 13),
                                    ),)
                                  ],
                                )
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
