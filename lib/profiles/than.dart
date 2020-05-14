import 'package:flutter/material.dart';
import '../resources/text.dart';
import '../profiles/profile_tile.dart';

class ThanProfileTile extends StatelessWidget{
  ThanProfileTile(Key key): super(key: key);

  @override
  Widget build (BuildContext build){
    return ProfileTile(key, 'assets/profile_pics/than.jpeg', 'Than Jarvis', JoshText.profileText, '/than_profile');
  }
}

class ThanProfile extends StatefulWidget{
  ThanProfile({Key key}) : super(key: key);

  @override
  _ThanProfileState createState() => _ThanProfileState();
}

class _ThanProfileState extends State<ThanProfile>{
  _ThanProfileState() : super();

  Widget build(BuildContext build){
    return Scaffold(
      appBar: AppBar(
        title: Text("Than Jarvis"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Text(
          "Coming Soon: Than's Profile",
          style: TextStyle(
            fontSize: 50
          )
        )
      )
    );
  }
}