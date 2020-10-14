import 'package:flutter/material.dart';
import 'costanti.dart';
import 'MyProdotto.dart';

class ProdottoScreen extends StatefulWidget {
  ProdottoScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProdottoScreenState createState() => _ProdottoScreenState();
}

class _ProdottoScreenState extends State<ProdottoScreen> {
  int _counter = 0;
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
      Navigator.pushNamed(context, '/setting');
    }
  }

  @override
  Widget build(BuildContext context) {
    const colorsLinearGradient = [
      Colors.grey,
      Colors.deepOrange,
      Colors.yellowAccent,
      color1,
      color2
    ];
    return Scaffold(
      backgroundColor: color2,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          top1,
          Container(
            padding: EdgeInsets.only(left: 35.0, top: 16.0),
            height: 150.0,
            child: Text('Scopri i nostri prodotti!',
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
                itemCount: prodotti.length,
                itemBuilder: (context, index) {
                  return MyProdotto(
                    title: prodotti[index],
                    indexliste: index,
                    image: index,
                  );
                },
              ),
            ),
          ),
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
            icon: Icon(Icons.settings),
            title: Text('Categorie'),
          ),
        ],
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
