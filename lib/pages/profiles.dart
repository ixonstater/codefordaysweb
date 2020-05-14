import 'package:flutter/material.dart';
import '../profiles/ashley.dart' show AshleyProfileTile;
import '../profiles/josh.dart' show JoshProfileTile;
import '../profiles/than.dart' show ThanProfileTile;

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
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ThanProfileTile(key)
                ),
                Expanded(
                  child: SizedBox()
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
              AshleyProfileTile(key),
              ThanProfileTile(key)
          ],
        ),
      );
    }
  }
}