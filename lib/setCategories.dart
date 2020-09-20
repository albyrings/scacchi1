import 'package:flutter/material.dart';
import 'costanti.dart';

class SetCategories extends StatefulWidget {
  SetCategories({Key key, this.indexcategories}) : super(key: key);

  int indexcategories;

  @override
  _SetCategoriesState createState() => _SetCategoriesState();
}

class _SetCategoriesState extends State<SetCategories> {
  int indexcategories;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          '${categorie[indexcategories]}',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Switch(
          value: categorieval[indexcategories],
          onChanged: (value) {
            setState(() {
              categorieval[indexcategories] = value;
            });
          },
        ),
      ],
    );
  }
}
