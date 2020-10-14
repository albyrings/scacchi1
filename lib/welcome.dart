import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'rounded_button.dart';
import 'costanti.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  addStringToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nome_utente', myController.text);
  }

  getStringValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String nome_utente = prefs.getString('nome_utente');
  }

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  final myController = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              top1,
              SizedBox(
                height: 140.0,
              ),
              Row(
                children: <Widget>[
                  /*Hero(
                  tag: 'logo',
                  child: Container(
                    child: Text('Liceo A. Scacchi'),
                    height: 60.0,
                  ),
                ),*/
                  TypewriterAnimatedTextKit(
                    text: ['Liceo A.Scacchi'],
                    textStyle: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey[900]),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hoverColor: Colors.grey,
                  labelText: 'Inserisci il tuo nome',
                ),
                controller: myController,
              ),
              RoundedButton(
                title: 'Vai!',
                colour: Colors.grey[800],
                onPressed: () {
                  nome_utente = myController.text;
                  addStringToSF();
                  getStringValuesSF();
                  Navigator.pushNamed(context, '/');
                },
              ),
              /*RoundedButton(
              title: 'Registrati',
              colour: Colors.grey[700],
              onPressed: () {
                Navigator.pushNamed(context, '/articoli');
              },
            ),*/
            ],
          ),
        ),
      ),
    );
  }
}
