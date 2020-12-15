import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'MyNews.dart';
import 'costanti.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences localStorage;

Future<List> _getAllPref() async {
  for (var i = 0; i < 4; i++) {
    _getPref(i);
  }
}

Future<bool> _getPref(indexs) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool startupNumber = prefs.getBool('categoria$indexs');
  if (indexs == 0) {
    categoria0 = startupNumber ?? true;
  } else if (indexs == 1) {
    categoria1 = startupNumber ?? true;
  } else if (indexs == 2) {
    categoria2 = startupNumber ?? true;
  } else if (indexs == 3) {
    categoria3 = startupNumber ?? true;
  }
}

Future<void> _changepref(indexs) async {
  await SettingScreen.init();
  if (indexs == 0) {
    var a = categoria0;
    localStorage.setBool('categoria$indexs', a);
  } else if (indexs == 1) {
    var a = categoria1;
    localStorage.setBool('categoria$indexs', a);
  } else if (indexs == 2) {
    var a = categoria2;
    localStorage.setBool('categoria$indexs', a);
  } else if (indexs == 3) {
    var a = categoria3;
    localStorage.setBool('categoria$indexs', a);
  }
}

class SettingScreen extends StatefulWidget {
  SettingScreen({Key key}) : super(key: key);

  static Future init() async {
    localStorage = await SharedPreferences.getInstance();
  }

  @override
  SettingScreenState createState() => SettingScreenState();
}

class SettingScreenState extends State<SettingScreen> {
  int _selectedIndex = 2;

  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.pushNamed(context, '/');
    }
    if (index == 1) {
      Navigator.pushNamed(context, '/prodotti');
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
                    margin:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
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
                                    value: categoria0,
                                    onChanged: (bool value) {
                                      setState(() {
                                        categoria0 =
                                            (categoria0 == true) ? false : true;
                                      });
                                      _changepref(0);
                                    },
                                  ),
                                ),
                              )),
                        ]),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
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
                                    value: categoria1,
                                    onChanged: (bool value) {
                                      setState(() {
                                        categoria1 =
                                            (categoria1 == true) ? false : true;
                                      });
                                      _changepref(1);
                                    },
                                  ),
                                ),
                              )),
                        ]),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
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
                                    value: categoria2,
                                    onChanged: (bool value) {
                                      setState(() {
                                        categoria2 =
                                            (categoria2 == true) ? false : true;
                                      });
                                      _changepref(2);
                                    },
                                  ),
                                ),
                              )),
                        ]),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
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
                                    value: categoria3,
                                    onChanged: (bool value) {
                                      setState(() {
                                        categoria3 =
                                            (categoria3 == true) ? false : true;
                                        _changepref(3);
                                      });
                                    },
                                  ),
                                ),
                              )),
                        ]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/welcome');
                    },
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          MySet(
                            title: "Inserisci il tuo nome: ",
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: color1,
        elevation: 1000.0,
        items: BNBI,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
