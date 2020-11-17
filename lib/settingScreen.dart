import 'package:A.Scacchi/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'MyNews.dart';
import 'costanti.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({Key key}) : super(key: key);

  @override
  SettingScreenState createState() => SettingScreenState();
}

class SettingScreenState extends State<SettingScreen> {
  int _selectedIndex = 2;

  @override
  void initState() {
    super.initState();
    _getAllPref();
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

  Future<List> _getAllPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (var i = 0; i < categorieval.length; i++) {
      bool startupNumber = prefs.getBool('startupNumber$i');
      if (startupNumber == null) {
        categorieval1[i] = true;
      } else {
        categorieval1[i] = startupNumber;
      }

      print("categorieval11:$categorieval1");
    }
    /*setState(() {
      categorieval = categorieval1;
    });*/
    categorieval = categorieval1;

    print('getAllPref()');
    print("categorieval:$categorieval");
    print("categorieval12$categorieval1");
  }

  Future<bool> _getPref(indexs) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool startupNumber = prefs.getBool('startupNumber$indexs');
    if (startupNumber == null) {
      categorieval[indexs] = true;
    } else {
      categorieval[indexs] = startupNumber;
    }

    //categorieval[indexs] = startupNumber ?? true;
    setState(() {
      categorieval[indexs] = categorieval[indexs];
    });
    print('getPref()');
  }

  Future<void> _changepref(indexs) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool lastStartupNumber = await _getPref(indexs);
    //lastStartupNumber = lastStartupNumber ?? true;
    bool currentBool = lastStartupNumber == true ? false : true;
    /*setState(() {
      prefs.setBool('startupNumber', currentBool);
    });*/
    prefs.setBool('startupNumber$indexs', currentBool);
    categorieval[indexs] = currentBool;
    //return categorieval[indexs];
    print('changepref');
    print(categorieval);
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
                                      _changepref(0);
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

                                      print(categorieval);
                                    },
                                  ),
                                  onTap: () {
                                    setState(() {
                                      categorieval[1] = !categorieval[1];
                                      _changepref(1);
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
                                      _changepref(2);
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
                                      _changepref(3);
                                    });
                                  },
                                ),
                              )),
                        ]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/welcome');
                    },
                    child: Container(
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            title: Text('Vestiario'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Categorie'),
          ),
        ],
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
