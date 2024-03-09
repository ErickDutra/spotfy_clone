import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotfy_clone/models/carrosel_image.dart';

class CarroselImage extends StatelessWidget {
  final _carrosel = [
    Carrosel(
      image: 'assets/fly.jpg',
      title_1: 'Racionais MC',
      title_2: 'Eu vim da',
    ),
    Carrosel(
      image: 'assets/obito.jpg',
      title_1: 'Racionais MC',
      title_2: 'selva, sou leão',
    ),
    Carrosel(
      image: 'assets/cat.jpg',
      title_1: 'Racionais MC',
      title_2: 'sou demais',
    ),
    Carrosel(
      image: 'assets/obito.jpg',
      title_1: 'Racionais MC',
      title_2: 'pro seu',
    ),
    Carrosel(
      image: 'assets/fly.jpg',
      title_1: 'Racionais MC',
      title_2: 'quintal.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
            child: Text(
              "Seus mixes mais ouvidos",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: _carrosel.map((car) {
                  return Container(
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 2.0),
                            height: 150,
                            child: Image.asset(car.image)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(car.title_1,
                              style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(car.title_2,
                              style:TextStyle(color: Color.fromRGBO(94, 94, 94, 1)) ,),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
