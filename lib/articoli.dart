import 'package:flutter/material.dart';
import 'costanti.dart';
import 'MyArticle.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

class Articoli extends StatefulWidget {
  Articoli({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  _ArticoliState createState() => _ArticoliState();
}

class _ArticoliState extends State<Articoli> {
  int _selectedIndex = 1;

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

  /*Future<void> _launched;

  Future<void> _launchURL() async {
    const url = 'https://liceoscacchibari.edu.it/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
    Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
      if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}');
      } else {
        return const Text('');
      }
    }*/

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: color2,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(top: 5.0),
          children: <Widget>[
            top1,
            //FutureBuilder<void>(future: _launched, builder: _launchStatus),
            IconButton(
              alignment: Alignment.topLeft,
              icon: Icon(Icons.arrow_back_ios),
              tooltip: 'Indietro',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            MyArticle(
                title: titoli[indexliste_1], content: contenuti[indexliste_1]),
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              alignment: Alignment.bottomCenter,
              tooltip: 'Indietro',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            /*IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                alignment: Alignment.bottomCenter,
                tooltip: 'Vai sul sito',
                onPressed: () {
                  
                  //setState(() {
                   // _launched = _launchURL();
                  //}
                  );
                },
              ),*/
          ],
        ),
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
            icon: Icon(Icons.people_alt),
            title: Text('Vestiario'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Categorie'),
          ),
        ],
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
    return scaffold;
    throw UnimplementedError();
  }
}
