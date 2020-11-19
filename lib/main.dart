// THIS APP WAS MADE BY ALBERTO ANELLI

import 'package:flutter/material.dart';
import 'prodottoscreen.dart';
import 'welcome.dart';
import 'articoli.dart';
import 'settingScreen1.dart';
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
      initialRoute: '/loading',
      routes: {
        '/': (context) => MyHomePage(),
        '/articoli': (context) => Articoli(),
        '/welcome': (context) => WelcomeScreen(),
        '/loading': (context) => LoadingScreen(),
        '/setting': (context) => SettingScreen(),
        '/prodotti': (context) => ProdottoScreen(),
      },
    );
  }
}
