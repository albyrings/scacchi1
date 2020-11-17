/*import 'package:A.Scacchi/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'costanti.dart';

class MessageState<T extends StatefulWidget> extends State<T> {
  String _message;

  /// Setter for the message variable
  set setMessage(String message) => setState(() {
        _message = message;
      });

  /// Getter for the message variable
  String get getMessage => _message;
}

class LoadingScreen extends StatefulWidget {
  @override
  LoadingScreenState createState() => LoadingScreenState();
}

/// Initialise the state
@override
void initState() {
  super.initState();

  /// If the LoadingScreen widget has an initial message set, then the default
  /// message in the MessageState class needs to be updated
  if (widget.initialMessage != null) {
    initialMessage = widget.initialMessage;
  }

  /// We require the initializers to run after the loading screen is rendered
  SchedulerBinding.instance.addPostFrameCallback((_) {
    runInitTasks();
  });
}

/// This method calls the initializers and once they complete redirects to
/// the widget provided in navigateAfterInit
@protected
Future runInitTasks() async {
  /// Run each initializer method sequentially
  Future.forEach(widget.initializers, (init) => init(this)).whenComplete(() {
    Navigator.of(context).pushReplacement(
        new MaterialPageRoute(builder: (BuildContext context) => MyHomePage()));
  });
}

class LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: new InkWell(
        child: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            /// Paint the area where the inner widgets are loaded with the
            /// background to keep consistency with the screen background
            new Container(
              decoration: BoxDecoration(color: color2),
            ),

            /// Render the background image
            new Container(
              child: Image.asset('images/logoScacchi.png'),
            ),

            /// Render the Title widget, loader and messages below each other
            new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  flex: 1,
                  child: new Container(
                      child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                      ),
                    ],
                  )),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      /// Loader Animation Widget
                      CircularProgressIndicator(
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
*/
