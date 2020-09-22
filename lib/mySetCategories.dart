import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'costanti.dart';

class MySetcategory extends StatefulWidget {
  MySetcategory({Key key, this.category, @required this.indexliste})
      : super(key: key);

  final String category;
  final int indexliste;

  @override
  _MySetcategoryState createState() => _MySetcategoryState();
}

class _MySetcategoryState extends State<MySetcategory> {
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
            /*Flexible(
              flex: 2,
              child: Text(
                '${categorie[0]}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),*/
            Flexible(
                flex: 1,
                child: MergeSemantics(
                  child: ListTile(
                    title: Text('${categorie[0]}'),
                    trailing: CupertinoSwitch(
                      value: categorieval[0],
                      onChanged: (bool value) {
                        setState(() {
                          categorieval[0] = value;
                        });
                      },
                    ),
                    onTap: () {
                      setState(() {
                        categorieval[0] = !categorieval[0];
                      });
                    },
                  ),
                )),
          ]),
    );
  }
}
