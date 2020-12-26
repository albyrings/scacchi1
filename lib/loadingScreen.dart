import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';
import 'costanti.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:http/http.dart' as http;

// String sentence;
// Future<String> getSentence() async {
//   final response = await http.get('https://api.kanye.rest/');
//   if (response.statusCode == 200) {
//     String sentence1 = response.body;
//     sentence = sentence1;
//   } else {
//     throw Exception('Unable to fetch products from the REST API');
//   }
// }

String nomeUtente;
Future<String> getStringValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String nome_utente = prefs.getString('nome_utente');
  print(nome_utente);
  nomeUtente = nome_utente;
}

Future _getAllPref() async {
  for (int i = 0; i < 4; i++) {
    _getPref(i);
  }
}

Future<bool> _getPref(indexs) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool startupNumber = prefs.getBool('categoria$indexs');
  if (indexs == 0) {
    categoria0 = startupNumber ?? true;
  } else if (indexs == 1) {
    categoria1 = startupNumber ?? true;
  } else if (indexs == 2) {
    categoria2 = startupNumber ?? true;
  } else if (indexs == 3) {
    categoria3 = startupNumber ?? true;
  }
}

class LoadingScreen extends StatefulWidget {
  @override
  LoadingScreenState createState() => LoadingScreenState();
}

@override
void initState() {
  getStringValuesSF();
}

class LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: GestureDetector(
          onTap: () {
            _getAllPref();
            //getSentence();
            Navigator.pushNamed(context, '/');
          },
          child: new InkWell(
            child: new Stack(
              fit: StackFit.expand,
              children: <Widget>[
                new Container(
                  decoration: BoxDecoration(color: color2),
                ),
                new Container(
                  child: Image.asset('images/logoScacchi.png'),
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Expanded(
                      flex: 1,
                      child: new Container(
                          child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                          ),
                        ],
                      )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircularProgressIndicator(
                            valueColor:
                                new AlwaysStoppedAnimation<Color>(Colors.green),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
