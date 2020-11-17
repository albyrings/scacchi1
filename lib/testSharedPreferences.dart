/*import 'package:A.Scacchi/costanti.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//TODO: NOME_UTENTE
//TODO: CATEGORIE

class MyShared extends StatefulWidget {
  MyShared({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MySharedState createState() => _MySharedState();
}

class _MySharedState extends State<MyShared> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  //Loading counter value on start
  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);
    });
    print(_counter);
  }

  //Incrementing counter after click
  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counter);
    });
    print(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      appBar: AppBar(
        title: Text('Scacchi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              //style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/
