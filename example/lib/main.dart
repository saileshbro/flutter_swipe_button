import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 8,
              ),
              child: SwipeButton(
                child: Text(
                  "Swipe to ...",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onSwipe: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Swipped"),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 8,
              ),
              child: SwipeButton(
                icon: Icon(
                  Icons.chevron_right,
                  color: Colors.blue,
                ),
                child: Text(
                  "Swipe to ...".toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onSwipe: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Swipped"),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 8,
              ),
              child: SwipeButton(
                borderRadius: BorderRadius.circular(8),
                backgroundColor: Colors.amber,
                innerPadding: 10,
                height: 60,
                child: Text(
                  "Swipe to ...",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                onSwipe: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Swipped"),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 8,
              ),
              child: SwipeButton(
                backgroundColor: Colors.blue,
                color: Colors.yellow,
                borderRadius: BorderRadius.zero,
                innerPadding: 2,
                height: 30,
                child: Text(
                  "Swipe to ...",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onSwipe: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Swipped"),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}