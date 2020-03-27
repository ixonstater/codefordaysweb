import 'package:flutter/material.dart';
import '../profiles/profile_tile.dart';
import '../resources/text.dart';

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
  _JoshProfileState createState() => _JoshProfileState();
}

class _JoshProfileState extends State<JoshProfile>{
  final int projectsListPageCode = 0;
  final int resumePageCode = 1;

  int displayedPage;

  _JoshProfileState() : super();

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
    return Text(
      "hello world"
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

class JoshProfileTheme{
  static const primaryTextColor = Color.fromRGBO(0, 0, 0, 1.0);
}

class JoshProfileText{
  static const title = "Josh Jarvis";
}