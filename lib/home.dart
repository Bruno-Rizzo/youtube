import 'package:flutter/material.dart';
import 'telas/Inicio.dart';
import 'telas/EmAlta.dart';
import 'telas/Inscricao.dart';
import 'telas/Entrada.dart';
import 'telas/Biblioteca.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> telas = [
      Inicio(),
      EmALta(),
      Incricao(),
      Entrada(),
      Biblioteca()
    ];

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/youtube_logo.png',
          width: 98,
          height: 22,
        ),
        backgroundColor: Colors.black54,
        iconTheme: IconThemeData(
          color: Colors.white70,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: (){},
          ),
           IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: (){},
          ),
        ],
      ),
      body: Center(child: telas[_indiceAtual]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice){
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Início'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('Explorar'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            title: Text('Inscrições'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            title: Text('Entrada'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_filled),
            title: Text('Biblioteca'),
          ),
      ],
      ),
    );

  }

}