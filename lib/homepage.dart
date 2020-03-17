import 'package:flutter/material.dart';
import 'resources/text.dart';
import 'resources/theme.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            WebsiteText.homePageTitle
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: WebsiteText.aboutTab,
                icon: Icon(Icons.directions_car)
              ),
              Tab(
                text: WebsiteText.developersTab,
                icon: Icon(Icons.directions_transit)
              ),
              Tab(
                text: WebsiteText.projectsTab,
                icon: Icon(Icons.directions_bike)
              ),
            ],
          ),
        )
      )
    );
  }
}
