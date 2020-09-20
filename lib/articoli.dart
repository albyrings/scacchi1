import 'package:flutter/material.dart';
import 'costanti.dart';
import 'MyArticle.dart';

class Articoli extends StatefulWidget {
  Articoli({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ArticoliState createState() => _ArticoliState();
}

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
      Navigator.pushNamed(context, '/welcome');
    }
    if (index == 2) {
      Navigator.pushNamed(context, '/setting');
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
            IconButton(
              alignment: Alignment.topLeft,
              icon: Icon(Icons.arrow_back_ios),
              tooltip: 'Indietro',
              onPressed: () {
                Navigator.pop(context);
              },
            ),

            //prova questo con un emulatore
            /*GradientText("this is my text",
    gradient: LinearGradient(
    colors: [Colors.deepPurple, Colors.deepOrange, Colors.pink]),
    style: TextStyle(fontSize: 42),
    textAlign: TextAlign.center),*/
            /*Container(
                padding: EdgeInsets.only(left: 20.0, top: 16.0),
                height: 150.0,
                child: Text(
                  'Bentornato ${nome_utente}!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontStyle: FontStyle.italic,
                    //color:Colors.grey[300],
                  ),
                )),*/

            MyArticle(
                title: 'Avviso per gli iscritti alle classi prime 2020-21',
                content:
                    "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium  laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"),
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              alignment: Alignment.bottomCenter,
              tooltip: 'Indietro',
              onPressed: () {
                Navigator.pop(context);
              },
            )
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
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
    return scaffold;
  }
}
