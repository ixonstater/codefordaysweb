import 'package:flutter/material.dart';
import '../resources/text.dart';
import '../resources/theme.dart';

class JoshProfileTile extends StatelessWidget{
  var mobileAspectRatio = 0.58;
  JoshProfileTile(Key key) : super(key: key);

  @override
  Widget build (BuildContext build){
    var mediaData = MediaQuery.of(build);
    var aspectRatio = mediaData.size.width / mediaData.size.height;
    var titleAlignment = aspectRatio > this.mobileAspectRatio ? Alignment.topLeft : Alignment.center;

    Widget profileContents;

    if(aspectRatio > this.mobileAspectRatio){
      profileContents = Row(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              '/home/ixonstater/code/codefordaysweb/lib/profiles/josh.png',
              scale: 1.9,
            ),
          ),
          SizedBox(width: 15),
          Flexible(
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                JoshText.profileText,
                style: TextStyle(
                  color: WebsiteTheme.primaryTextColor
                )
              )
            )
          )
        ],
      );
    }

    else {
      profileContents = Column(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              '/home/ixonstater/code/codefordaysweb/lib/profiles/josh.png',
              scale: 1.9,
            ),
          ),
          SizedBox(height: 15),
          Align(
            alignment: Alignment.center,
            child: Text(
              JoshText.profileText,
              style: TextStyle(
                color: WebsiteTheme.primaryTextColor
              )
            )
          )
        ],
      );
    }

    return Container(
      height: 400,
      margin: EdgeInsets.all(WebsiteTheme.profileMargin),
      padding: EdgeInsets.all(WebsiteTheme.profilePadding),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 20.0,
            offset: Offset(
              10.0,
              10.0,
            ),
          )
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(20)
        ),
        color: WebsiteTheme.primaryColor
      ),
      child: ListView(
        children: <Widget>[
          Align(
            alignment: titleAlignment,
            child: Text(
              "Josh Jarvis",
              style: TextStyle(
                fontSize: 20,
                color: WebsiteTheme.primaryTextColor
              ),
            )
          ),
          SizedBox(height: 15),
          profileContents
        ]
      ),
    );
  }
}