import 'package:flutter/material.dart';
import 'package:spotfy_clone/components/button_app_bar.dart';
import 'package:spotfy_clone/components/draw_bar.dart';
import 'package:spotfy_clone/components/main_home.dart';
import 'package:spotfy_clone/components/my_search.dart';
import 'package:spotfy_clone/components/top_bar_search.dart';
import 'package:spotfy_clone/components/top_library.dart';
import 'package:spotfy_clone/components/my_library.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageActual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: pageActual);
  }

  setPageActual(page) {
    setState(() {
      pageActual = page;
    });
  }

  Widget setTitle(void Function(int) setPageActual) {
    int currentPage = pageActual;
    if (currentPage == 0) {
      return MyButtonBar();
    } else if (currentPage == 1) {
      return TopSearch();
    } else if (currentPage == 2) {
      return TopLibrary();
    }
    return Container();
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
          title: setTitle(setPageActual)),
      drawer: MyDrawBar(),
      body: PageView(
        controller: pc,
        children: [
          MainHomePage(),
          MySearch(),
          MyLibrary(),
        ],
        onPageChanged: setPageActual,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageActual,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: 'Sua Biblioteca'),
        ],
        onTap: (page) {
          pc.animateToPage(page,
              duration: Duration(milliseconds: 001), curve: Curves.linear);
        },
      ),
    );
  }
}
