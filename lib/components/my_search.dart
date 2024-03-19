import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white, // Alterando o fundo para branco
            ),
            child: CupertinoSearchTextField(
              placeholder: 'what do you wants to hear?',
            ),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Explore your genres',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [BoxGenres(), BoxGenres(), BoxGenres()],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Navigate all Sections',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Column(
                    
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            height: 90,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.blue
                            ),
                            child:Container(
                              margin: EdgeInsets.all(5),
                              child: Text('Music',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              
                              ),),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.green
                            ),
                            child:Container(
                              margin: EdgeInsets.all(5),
                              child: Text('Podcasts',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              
                              ),),
                            ),
                          )
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            height: 90,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.yellow
                            ),
                            child:Container(
                              margin: EdgeInsets.all(5),
                              child: Text('Live Events',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              
                              ),),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.purple
                            ),
                            child:Container(
                              margin: EdgeInsets.all(5),
                              child: Text('Made for you',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              
                              ),),
                            ),
                          )
                        ],
                      ),

                    ],


                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class BoxGenres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180,
        width: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage('assets/panic.jpg'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Text('#TodoMundoEmPanico'),
            ),
          ],
        ));
  }
}
