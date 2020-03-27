import 'package:flutter/material.dart';
import '../resources/text.dart';
import '../profiles/profile_tile.dart';

class AshleyProfileTile extends StatelessWidget{
  AshleyProfileTile(Key key): super(key: key);

  @override
  Widget build (BuildContext build){
    return ProfileTile(key, 'assets/profile_pics/ashley.jpeg', 'Ashley Jarvis', JoshText.profileText, '/ashley_profile');
  }
}

class AshleyProfile extends StatefulWidget{
  AshleyProfile(Key key) : super(key: key);

  @override
  _AshleyProfileState createState() => _AshleyProfileState();
}

class _AshleyProfileState extends State<AshleyProfile>{
  _AshleyProfileState() : super();

  Widget build(BuildContext build){
    return Scaffold(
      appBar: AppBar(
        title: Text("Ashley Jarvis"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Text(
          "Coming Soon: Ashley's Profile",
          style: TextStyle(
            fontSize: 50
          )
        )
      )
    );
  }
}