import 'package:flutter/material.dart';

class MyArticle extends StatelessWidget {
  MyArticle({
    @required this.title,
    @required this.content,
  });

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 1.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              child: const Divider(
                  color: Colors.black,
                  thickness: 1.5,
                  indent: 15.0,
                  endIndent: 30.0),
            ),
            Flexible(
              child: Text(
                '${title}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
              child: const Divider(
                  color: Colors.black,
                  thickness: 1.5,
                  indent: 15.0,
                  endIndent: 30.0),
            ),
            Flexible(
              child: Text(
                '${content}',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                ),
              ),
            ),
          ]),
    );
  }
}
