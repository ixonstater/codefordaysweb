import 'package:flutter/material.dart';
import '../profiles/profile_tile.dart';
import '../resources/text.dart';

class JoshProfileTile extends StatelessWidget{
  JoshProfileTile(Key key) : super(key: key);

  @override
  Widget build (BuildContext build){
    return ProfileTile(key, 'assets/profile_pics/josh.png', 'Josh Jarvis', JoshText.profileText);
  }
}