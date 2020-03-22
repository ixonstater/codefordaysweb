import 'package:codefordaysweb/resources/theme.dart';
import 'package:flutter/material.dart';
import '../resources/text.dart';
import '../profiles/ashley.dart' show AshleyProfileTile;
import '../profiles/josh.dart' show JoshProfileTile;

class ProfilesPage extends StatelessWidget{
  ProfilesPage({Key key}) : super(key: key);

  @override
  Widget build (BuildContext build){
    var mediaData = MediaQuery.of(build);
    var aspectRatio = mediaData.size.width / mediaData.size.height;

    if(aspectRatio > 1.1){
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