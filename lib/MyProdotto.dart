import 'package:flutter/material.dart';

class MyProdotto extends StatelessWidget {
  MyProdotto({
    @required this.image,
    @required this.title,
    @required this.indexliste,
  });

  final int image;
  final String title;
  final int indexliste;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
          color: Colors.grey[400], borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Flexible(
              flex: 1,
              child: Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(60.0),
                ),
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
        ],
      ),
    );
  }
}
