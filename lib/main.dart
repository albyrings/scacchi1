// THIS APP WAS MADE BY ALBERTO ANELLI

import 'package:flutter/material.dart';
import 'prodottoscreen.dart';
import 'welcome.dart';
import 'costanti.dart';
import 'articoli.dart';
import 'settingScreen.dart';
import 'MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LICEO SCACCHI BARI',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: nome_utente == '' ? '/welcome' : '/',
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
