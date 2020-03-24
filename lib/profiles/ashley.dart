import 'package:flutter/material.dart';
import '../resources/text.dart';
import '../resources/theme.dart';
import '../profiles/profile_tile.dart';

class AshleyProfileTile extends StatelessWidget{
  AshleyProfileTile(Key key): super(key: key);

  @override
  Widget build (BuildContext build){
    return ProfileTile(key, '', 'Ashley Jarvis', JoshText.profileText);
  }
}