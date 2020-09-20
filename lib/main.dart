// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'welcome.dart';
import 'costanti.dart';
import 'articoli.dart';
import 'MyNews.dart';
import 'settingScreen.dart';
import 'package:gradient_text/gradient_text.dart';
//import 'package:scacchiapp1/articoli.dart';
//prova questo con un emulatore(ovviamente attivalo anche sotto)
//import 'package:gradient_text/gradient_text.dart';

void main() => runApp(MyApp());

/*const color1 = Color(0xffb8150c);
const color2 = Color(0xff7f0d36);
const top1 = Image(
  image: NetworkImage(
      'https://liceoscacchibari.edu.it/wp-content/uploads/2014/03/logonull.png'),
);
List<String> titoli = [
  'Avviso per gli iscritti alle classi prime 2020-21',
  'Olimpiadi di Robotica 2020: 1° premio allo Scacchi per la categoria Terra',
  'DATE DI PUBBLICAZIONE DEGLI ESITI FINALI DEGLI ESAMI DI STATO',
  'Pubblicazione dei calendari dei colloqui delle Commissioni di Esame di Stato',
  'Didattica ai tempi del coronavirus – Storia e letteratura inglese',
  'Cerimonia di consegna dei fondi #ScacchiBatteCovid'
];*/

//metti le routes queando fai le altre schermate

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
  String nome_utente = 'Rocco';
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
      Navigator.pushNamed(context, '/welcome');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      /* appBar: AppBar(backgroundColor: color1,
           title: NetworkImage('https://liceoscacchibari.edu.it/wp-content/uploads/2014/03/logonull.png'),
            /*color: color2,
            onPressed: () {
              print('Icon pressed');
              //metti la routes della homepage
            },
          ),*/
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                print('Icon pressed');
                //metti la routes della homepage
              },
            ),
          ]),*/

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          top1,
          Container(
            padding: EdgeInsets.only(left: 35.0, top: 16.0),
            height: 150.0,
            child: GradientText('Bentornato $nome_utente!',
                gradient: LinearGradient(colors: [
                  Colors.grey,
                  Colors.deepOrange,
                  Colors.yellowAccent,
                  color1,
                  color2
                ]),
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
                  );
                },
              ),
            ),
          ),

          /*MyNews(
              title: 'Avviso per gli iscritti alle classi prime 2020-21',
            ),
            MyNews(
              title:
                  'Olimpiadi di Robotica 2020: 1° premio allo Scacchi per la categoria Terra',
            ),
            MyNews(
              title:
                  'DATE DI PUBBLICAZIONE DEGLI ESITI FINALI DEGLI ESAMI DI STATO',
            ),
            MyNews(
              title:
                  'Pubblicazione dei calendari dei colloqui delle Commissioni di Esame di Stato',
            ),
            MyNews(
              title:
                  'Didattica ai tempi del coronavirus – Storia e letteratura inglese',
            ),
            MyNews(
              title: 'Cerimonia di consegna dei fondi #ScacchiBatteCovid',
            )*/
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
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
