import 'package:flutter/material.dart';
import 'resources/text.dart';
import 'pages/about_us.dart';
import 'pages/profiles.dart';
import 'pages/hosted_projects.dart';

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
            HomepageText.homePageTitle,
            style: TextStyle(
              fontSize: 30
            ),
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: HomepageText.aboutTab,
                icon: Icon(Icons.help)
              ),
              Tab(
                text: HomepageText.developersTab,
                icon: Icon(Icons.people)
              ),
              Tab(
                text: HomepageText.projectsTab,
                icon: Icon(Icons.build)
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            AboutPage(),
            ProfilesPage(),
            ProjectsPage()
          ],
        )
      )
    );
  }
}
