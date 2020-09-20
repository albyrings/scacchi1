import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'rounded_button.dart';
import 'costanti.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

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

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
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
              height: 60.0,
            ),
            RoundedButton(
              title: 'Log In',
              colour: Colors.grey[800],
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            RoundedButton(
              title: 'Registrati',
              colour: Colors.grey[700],
              onPressed: () {
                Navigator.pushNamed(context, '/articoli');
              },
            ),
          ],
        ),
      ),
    );
  }
}
