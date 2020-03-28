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
        Container(
          margin: EdgeInsets.only(
            left: 20
          ),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: HyperLink(
                  this.key,
                  JoshProfileText.goLink,
                  JoshProfileText.goURL
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: HyperLink(
                  this.key,
                  JoshProfileText.digitRecog,
                  JoshProfileText.digitRecogURL
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: HyperLink(
                  this.key,
                  JoshProfileText.cssCube,
                  JoshProfileText.cssCubeURL
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: HyperLink(
                  this.key,
                  JoshProfileText.dkSym,
                  JoshProfileText.dkSymURL
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: HyperLink(
                  this.key,
                  JoshProfileText.makeAndBake,
                  JoshProfileText.makeAndBakeURL
                ),
              ),
            ]
          )
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
      onTap: () {html.window.open(this.url, '_self');},
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
  static const makeAndBake = "Get Assignments for Make and Bake";
  static const digitRecog = "0-4 Digit Recognition";
  static const cssCube = "Clickable CSS Cube";
  static const dkSym = "Basic Physics Simulation for DK";

  static const goURL = 'http://www.codefordays.io/josh/go_client/index.html';
  static const makeAndBakeURL = 'http://www.codefordays.io/josh/make_and_bake/make_and_bake.html';
  static const digitRecogURL = 'http://www.codefordays.io/josh/digit_recog/digit_recog.html';
  static const cssCubeURL = 'http://www.codefordays.io/josh/css_cube/index.html';
  static const dkSymURL = 'http://www.codefordays.io/josh/physics_sym/index.html';
}

