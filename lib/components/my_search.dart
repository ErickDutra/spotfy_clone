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
          child: CupertinoSearchTextField(),
        ),
      ),
      body: Center(
        child: Text('Conteúdo da tela de pesquisa'),
      ),
    );
  }
}
