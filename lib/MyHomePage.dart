import 'package:flutter/material.dart';
import 'costanti.dart';
import 'MyNews.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

String nomeUtente;
Future<String> getStringValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return String
  /*setState(() {
      String nome_utente = prefs.getString('nome_utente');
    });*/
  String nome_utente = prefs.getString('nome_utente');
  print(nome_utente);
  nomeUtente = nome_utente;
  //return nome_utente;
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.pushNamed(context, '/');
    }
    if (index == 1) {
      Navigator.pushNamed(context, '/welcome');
    }
    if (index == 2) {
      Navigator.pushNamed(context, '/setting');
    }
  }

  @override
  void initState() {
    getStringValuesSF();
    super.initState();
  }

  //TODO: ICONE IOS

  @override
  Widget build(BuildContext context) {
    const colorsLinearGradient = [
      Colors.grey,
      Colors.deepOrange,
      Colors.yellowAccent,
      color1,
      color2
    ];

    print(nomeUtente);
    return Scaffold(
      backgroundColor: color2,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          top1,
          Container(
            padding: EdgeInsets.only(left: 35.0, top: 16.0),
            height: 150.0,
            child: GradientText('Buongiorno $nomeUtente!',
                gradient: LinearGradient(colors: colorsLinearGradient),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.left),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: ListView.builder(
                itemCount: titoli.length,
                itemBuilder: (context, index) {
                  return MyNews(
                    title: titoli[index],
                    indexliste: index,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: color1,
        elevation: 1000.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            title: Text('Vestiario'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Categorie'),
          ),
        ],
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
