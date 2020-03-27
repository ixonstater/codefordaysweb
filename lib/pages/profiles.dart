import 'package:flutter/material.dart';
import '../profiles/ashley.dart' show AshleyProfileTile;
import '../profiles/josh.dart' show JoshProfileTile;

class ProfilesPage extends StatelessWidget{
  ProfilesPage({Key key}) : super(key: key);

  @override
  Widget build (BuildContext build){
    var mediaData = MediaQuery.of(build);
    var width = mediaData.size.width;

    if(width > 1200){
      return Container(
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: JoshProfileTile(key)
                ),
                Expanded(
                  child: AshleyProfileTile(key)
                )
              ],
            )
          ],
        ),
      );
    } else {
      return Container(
        child: ListView(
          children: <Widget>[
              JoshProfileTile(key),
              AshleyProfileTile(key)
          ],
        ),
      );
    }
  }
}