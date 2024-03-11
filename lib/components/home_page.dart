import 'package:flutter/material.dart';
import 'package:spotfy_clone/components/button_app_bar.dart';
import 'package:spotfy_clone/components/main_home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: pageAtual);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Image.asset('assets/profile.png'),
            );
          }),
          title: MyButtonBar()),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white
                  ),
                  
                )
              ),
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
                      Text('Ver Perfil',
                      style:
                            TextStyle( fontSize: 13))
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
              
              leading: Container(
                height: 24,
                child: Image.asset('assets/clock.png')),
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
      ),
      body: PageView(
        controller: pc,
        children: [MainHomePage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageAtual,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: 'Sua Biblioteca'),
        ],
        onTap: (page) {
          pc.animateToPage(page,
              duration: Duration(milliseconds: 400), curve: Curves.bounceInOut);
        },
      ),
    );
  }
}
