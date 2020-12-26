import 'package:A.Scacchi/loadingScreen.dart';
import 'package:flutter/material.dart';
import 'costanti.dart';
import 'MyArticle.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

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

class Articoli extends StatefulWidget {
  Articoli({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  _ArticoliState createState() => _ArticoliState();
}

// @override
// void initState() {
//   getSentence();
//   //super.initState();
// }

class _ArticoliState extends State<Articoli> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.pushNamed(context, '/');
    }
    if (index == 1) {
      Navigator.pushNamed(context, '/prodotti');
    }
    if (index == 2) {
      Navigator.pushNamed(context, '/setting');
    }
  }

  _launchURL() async {
    const url = 'https://liceoscacchibari.edu.it/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: color2,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(top: 5.0),
          children: <Widget>[
            top1,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                    icon: Icon(Icons.launch),
                    alignment: Alignment.bottomCenter,
                    tooltip: 'Vai sul sito',
                    onPressed: _launchURL),
              ],
            ),
            MyArticle(
                title: titoli[indexliste_1],
                content:
                    //sentence
                    contenuti[indexliste_1]),
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              alignment: Alignment.bottomCenter,
              tooltip: 'Indietro',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: color1,
        elevation: 1000.0,
        items: BNBI,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
    return scaffold;
  }
}
