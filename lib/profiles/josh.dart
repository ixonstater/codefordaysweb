import 'package:flutter/material.dart';
import '../profiles/profile_tile.dart';
import '../resources/text.dart';
import 'package:universal_html/html.dart' as html;

class JoshProfileTile extends StatelessWidget{
  JoshProfileTile(Key key) : super(key: key);

  @override
  Widget build (BuildContext build){
    return ProfileTile(key, 'assets/profile_pics/josh.png', 'Josh Jarvis', JoshText.profileText, '/josh_profile');
  }
}

class JoshProfile extends StatefulWidget{
  JoshProfile(Key key) : super(key: key);

  @override
  _JoshProfileState createState() => _JoshProfileState(this.key);
}

class _JoshProfileState extends State<JoshProfile>{
  int projectsListPageCode = 0;
  int resumePageCode = 1;
  int displayedPage;
  Key key;

  _JoshProfileState(Key key) : super();

  Widget build(BuildContext build){
    Widget profileContents;
    if(this.displayedPage == this.projectsListPageCode){
      profileContents = this.projectsList(build);
    } else if (this.displayedPage == this.resumePageCode){
      profileContents = this.resume(build);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          JoshProfileText.title,
          style: TextStyle(
            fontSize: 30
          )
        )
      ),
      body: profileContents
    );
  }

  Widget projectsList(BuildContext build){
    return ListView(
      children: <Widget>[
        SizedBox(height: 20),
        Text(
          JoshProfileText.projectsHeader,
          style: TextStyle(
            fontSize: 25,
          )
        ),
        Column(
          children: <Widget>[
            HyperLink(
              key,
              JoshProfileText.goLink,
              JoshProfileText.goURL
            )
          ]
        )
      ]
    );
  }

  Widget resume(BuildContext build){
    return Align(
      alignment: Alignment.center,
      child: Text(
        "Coming Soon: My Resume",
        style: TextStyle(
          fontSize: 50,
          color: JoshProfileTheme.primaryTextColor
        ),
      )
    );
  }

  @override
  void initState(){
    this.displayedPage = this.projectsListPageCode;
    super.initState();
  }
}

class HyperLink extends StatelessWidget{
  final Key key;
  final String text;
  final String url;
  HyperLink(this.key, this.text, this.url) : super(key: key);

  @override
  Widget build(BuildContext build){
    return InkWell(
      child: Text(
        this.text,
        style: TextStyle(
          color: JoshProfileTheme.linkColor,
          decoration: TextDecoration.underline
        )
      ),
      onTap: () {html.window.open(this.url, '_blank');},
    );
  }
}

class JoshProfileTheme{
  static const primaryTextColor = Color.fromRGBO(0, 0, 0, 1.0);
  static const linkColor = Color.fromRGBO(100, 0, 255, 1.0);
}

class JoshProfileText{
  static const title = "Josh Jarvis";
  static const projectsHeader = "My Projects";
  static const goLink = "Play a Game of Go";
  static const goURL = 'http://www.codefordays.io/play_go/';
}

