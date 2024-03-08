import 'package:flutter/material.dart';

class GridGender extends StatelessWidget {
  const GridGender({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(34, 34, 34, 1),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 9.0),
                width: 185,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                          height: 55,
                          width: 55,
                          child: Image.asset('assets/panic.jpg')),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Text('Rock'),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(34, 34, 34, 1),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 9.0),
                width: 185,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                          height: 55,
                          width: 55,
                          child: Image.asset('assets/panic.jpg')),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Text('Rap'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(34, 34, 34, 1),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 9.0),
                width: 185,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                          height: 55,
                          width: 55,
                          child: Image.asset('assets/fly.jpg')),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Text('Psytrance'),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(34, 34, 34, 1),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 9.0),
                width: 185,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                          height: 55,
                          width: 55,
                          child: Image.asset('assets/fly.jpg')),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Text('Reggae'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(34, 34, 34, 1),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 9.0),
                width: 185,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                          height: 55,
                          width: 55,
                          child: Image.asset('assets/panic.jpg')),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Text('Trap'),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(34, 34, 34, 1),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 9.0),
                width: 185,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                          height: 55,
                          width: 55,
                          child: Image.asset('assets/panic.jpg')),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Text('Classic'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}