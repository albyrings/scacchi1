import 'dart:ui';
//import 'package:js';
import 'package:flutter/material.dart';
import 'costanti.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*class MessageState<T extends StatefulWidget> extends State<T> {
  String _message;

  /// Setter for the message variable
  set setMessage(String message) => setState(() {
        _message = message;
      });

  /// Getter for the message variable
  String get getMessage => _message;
}*/

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

class LoadingScreen extends StatefulWidget {
  @override
  LoadingScreenState createState() => LoadingScreenState();
}

/// Initialise the state
@override
void initState() {
  getStringValuesSF();
}

/// This method calls the initializers and once they complete redirects to
/// the widget provided in navigateAfterInit

class LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: new InkWell(
        child: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            /// Paint the area where the inner widgets are loaded with the
            /// background to keep consistency with the screen background
            new Container(
              decoration: BoxDecoration(color: color2),
            ),

            /// Render the background image
            new Container(
              child: Image.asset('images/logoScacchi.png'),
            ),

            /// Render the Title widget, loader and messages below each other
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
                      /// Loader Animation Widget
                      CircularProgressIndicator(
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),
                      IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          })
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
