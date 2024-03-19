import 'package:flutter/material.dart';

class MyDrawBar extends StatefulWidget {
  @override
  _MyDrawBarState createState() => _MyDrawBarState();
}

class _MyDrawBarState extends State<MyDrawBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(color: Colors.white),
            )),
            margin: EdgeInsets.only(bottom: 1),
            child: Row(
              children: [
                Container(
                  height: 40,
                  margin: EdgeInsets.all(8),
                  child: Image.asset('assets/profile.png'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Neil Armstrong',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text('Ver Perfil', style: TextStyle(fontSize: 13))
                  ],
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.bolt),
            title: Text('Novidades'),
            onTap: () {},
          ),
          ListTile(
            leading:
                Container(height: 24, child: Image.asset('assets/clock.png')),
            title: Text('Seu Historico'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações e privacidade'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
