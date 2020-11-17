// THIS APP WAS MADE BY ALBERTO ANELLI

import 'package:flutter/material.dart';
import 'prodottoscreen.dart';
import 'testSharedPreferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'welcome.dart';
import 'costanti.dart';
import 'articoli.dart';
import 'settingScreen.dart';
import 'MyHomePage.dart';
import 'loadingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LICEO SCACCHI BARI',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/articoli': (context) => Articoli(),
        '/welcome': (context) => WelcomeScreen(),
        //'/loading': (context) => LoadingScreen(),
        '/setting': (context) => SettingScreen(),
        '/prodotti': (context) => ProdottoScreen(),
      },
    );
  }
}
