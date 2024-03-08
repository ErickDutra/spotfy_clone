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
                  ElevatedButton(onPressed: () {}, child: Text("Tudo")),
                  ElevatedButton(onPressed: () {}, child: Text("Musica")),
                  ElevatedButton(onPressed: () {}, child: Text("Podcasts"))
                ],
              ),
            ),
          ],
      );
  }
}