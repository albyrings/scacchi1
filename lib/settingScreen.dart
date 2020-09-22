import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'costanti.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({Key key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int _selectedIndex = 2;

  void _incrementCounter() {
    setState(() {
      ;
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
    return Scaffold(
      backgroundColor: color2,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          top1,
          /*Container(
            padding: EdgeInsets.only(left: 35.0, top: 16.0),
            height: 150.0,
            child: Text('Bentornato $nome_utente!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.left),
          ),*/
          Expanded(
            child: Container(
                padding: EdgeInsets.only(left: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: ListView(
                  children: [
                    Container(
                      //height: 56.0, // in logical pixels
                      margin:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20.0)),
                      // Row is a horizontal, linear layout.
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          // <Widget> is the type of items in the list.
                          children: <Widget>[
                            Flexible(
                                flex: 1,
                                child: MergeSemantics(
                                  child: ListTile(
                                    title: Text(
                                      '${categorie[0]}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
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
                    ),
                    Container(
                      //height: 56.0, // in logical pixels
                      margin:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20.0)),
                      // Row is a horizontal, linear layout.
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          // <Widget> is the type of items in the list.
                          children: <Widget>[
                            Flexible(
                                flex: 1,
                                child: MergeSemantics(
                                  child: ListTile(
                                    title: Text(
                                      '${categorie[1]}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    trailing: CupertinoSwitch(
                                      value: categorieval[1],
                                      onChanged: (bool value) {
                                        setState(() {
                                          categorieval[1] = value;
                                        });
                                      },
                                    ),
                                    onTap: () {
                                      setState(() {
                                        categorieval[1] = !categorieval[1];
                                      });
                                    },
                                  ),
                                )),
                          ]),
                    ),
                    Container(
                      //height: 56.0, // in logical pixels
                      margin:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20.0)),
                      // Row is a horizontal, linear layout.
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          // <Widget> is the type of items in the list.
                          children: <Widget>[
                            Flexible(
                                flex: 1,
                                child: MergeSemantics(
                                  child: ListTile(
                                    title: Text(
                                      '${categorie[2]}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    trailing: CupertinoSwitch(
                                      value: categorieval[2],
                                      onChanged: (bool value) {
                                        setState(() {
                                          categorieval[2] = value;
                                        });
                                      },
                                    ),
                                    onTap: () {
                                      setState(() {
                                        categorieval[2] = !categorieval[2];
                                      });
                                    },
                                  ),
                                )),
                          ]),
                    ),
                    Container(
                      //height: 56.0, // in logical pixels
                      margin:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20.0)),
                      // Row is a horizontal, linear layout.
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          // <Widget> is the type of items in the list.
                          children: <Widget>[
                            Flexible(
                                flex: 1,
                                child: MergeSemantics(
                                  child: ListTile(
                                    title: Text(
                                      '${categorie[3]}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    trailing: CupertinoSwitch(
                                      value: categorieval[3],
                                      onChanged: (bool value) {
                                        setState(() {
                                          categorieval[3] = value;
                                        });
                                      },
                                    ),
                                    onTap: () {
                                      setState(() {
                                        categorieval[3] = !categorieval[3];
                                      });
                                    },
                                  ),
                                )),
                          ]),
                    ),
                  ],
                )),
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
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
