import 'package:flutter/material.dart';
import 'costanti.dart';

class MyNews extends StatelessWidget {
  MyNews({
    @required this.title,
    @required this.indexliste,
  });

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

class MySet extends StatelessWidget {
  MySet({
    @required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
          color: Colors.grey[400], borderRadius: BorderRadius.circular(20.0)),
      child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
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
          flex: 1,
          child: IconButton(
            icon: Icon(Icons.arrow_forward_ios),
            tooltip: 'Leggi',
            onPressed: () {
              Navigator.pushNamed(context, '/welcome');
            },
          ),
        ),
      ]),
    );
  }
}
