import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 40,
              width: 40,
              child: Image.asset('assets/profile.png'),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: Row(
                children: [
                  
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 2.5),
                    child: ElevatedButton(onPressed: () {}, child: Text("Tudo", style: TextStyle(color: Color.fromRGBO(18,18,18,1)),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith((states) => Color.fromRGBO(30,215,96,1))
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 2.5),
                    child: ElevatedButton(onPressed: () {}, child: Text("Música", style: TextStyle(color: Color.fromRGBO(243, 243, 243, 1)),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith((states) => Color.fromRGBO(34, 34, 34, 1))
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 2.5),
                    child: ElevatedButton(onPressed: () {}, child: Text("Podcasts", style: TextStyle(color: Color.fromRGBO(243, 243, 243, 1)),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith((states) => Color.fromRGBO(34, 34, 34, 11))
                    )),
                  ),
                ],
              ),
            ),
          ],
      );
  }
}