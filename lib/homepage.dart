import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    void testFunc(){
        print('ive been pressed');
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text(widget.title),
            ),
            body: Center(),
                floatingActionButton: FloatingActionButton(
                onPressed: this.testFunc,
                tooltip: 'Increment',
                child: Icon(Icons.add),
            )
        );
    }
}
