import 'package:flutter/material.dart';
import 'costanti.dart';

class MyProdotto extends StatelessWidget {
  MyProdotto({
    @required this.image,
    @required this.title,
    @required this.indexliste,

    //@required this.content
  });

  // Fields in a Widget subclass are always marked "final".
  final int image;
  final String title;
  final int indexliste;

  //final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 56.0, // in logical pixels
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
          color: Colors.grey[400], borderRadius: BorderRadius.circular(20.0)),
      // Row is a horizontal, linear layout.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        // <Widget> is the type of items in the list.
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Flexible(
              flex: 1,
              child: Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(60.0),
                ),
                //shadowColor: Colors.grey[850],
                //elevation: 2000.0,
                child: Image.asset('images/$indexliste.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Flexible(
              flex: 1,
              child: Text(
                '$title',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          /*Flexible(
            flex: 9,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 5,
                    child: Text(
                      'leggi di più',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      tooltip: 'Leggi',
                      onPressed: () {
                        indexliste_1 = indexliste;
                        Navigator.pushNamed(context, '/articoli');
                      },
                    ),
                  ),
                ]),
          ),*/
        ],
      ),
    );
  }
}
