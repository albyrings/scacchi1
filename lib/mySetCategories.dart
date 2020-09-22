import 'package:flutter/material.dart';
import 'costanti.dart';

class MySetCategory extends StatelessWidget {
  MySetCategory({
    @required this.category,
    @required this.indexliste,
    //@required this.content
  });

  // Fields in a Widget subclass are always marked "final".

  final String category;
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
          Flexible(
            flex: 1,
            child: Text(
              '$title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Flexible(
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
          ),
        ],
      ),
    );
  }
}
