// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:scacchi1/prodottoscreen.dart';
import 'welcome.dart';
import 'costanti.dart';
import 'articoli.dart';
import 'MyNews.dart';
import 'settingScreen.dart';
import 'package:gradient_text/gradient_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LICEO SCACCHI BARI',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => MyHomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/articoli': (context) => Articoli(),
        '/welcome': (context) => WelcomeScreen(),
        '/setting': (context) => SettingScreen(),
        '/prodotti': (context) => ProdottoScreen(),
      },
    );
  }
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
      Navigator.pushNamed(context, '/prodotti');
    }
  }

  @override
  Widget build(BuildContext context) {
    const colorsLinearGradient = [
      Colors.grey,
      Colors.deepOrange,
      Colors.yellowAccent,
      color1,
      color2
    ];
    return Scaffold(
      backgroundColor: color2,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          top1,
          Container(
            padding: EdgeInsets.only(left: 35.0, top: 16.0),
            height: 150.0,
            child: GradientText('Bentornato $nome_utente!',
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
            icon: Icon(Icons.business),
            title: Text('Business'),
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
