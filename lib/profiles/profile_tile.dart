import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../resources/text.dart';
import '../resources/theme.dart';

class ProfileTile extends StatefulWidget{
  String imgPth;
  String profileName;
  String profileText;
  ProfileTile(Key key, this.imgPth, this.profileName, this.profileText) : super(key: key);
  @override
  _ProfileTileState createState() => _ProfileTileState(this.imgPth, this.profileName, this.profileText);
}

class _ProfileTileState extends State<ProfileTile> {
  String imgPth;
  String profileName;
  String profileText;
  double mobileAspectRatio = 0.58;
  double shadowOffset;
  _ProfileTileState(this.imgPth, this.profileName, this.profileText) : super();

  Widget build(BuildContext build){
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
              this.imgPth,
              scale: 1.9,
            ),
          ),
          SizedBox(width: 15),
          Flexible(
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                profileText,
                style: TextStyle(
                  color: WebsiteTheme.secondaryTextColor
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                imgPth,
                scale: 1.9,
              ),
            )
          ),
          SizedBox(height: 15),
          Align(
            alignment: Alignment.center,
            child: Text(
              profileText,
              style: TextStyle(
                color: WebsiteTheme.secondaryTextColor
              )
            )
          )
        ],
      );
    }

    return MouseRegion(
      onEnter: this.grow,
      onExit: this.shrink,

      child: Container(
        height: 400,
        margin: EdgeInsets.all(WebsiteTheme.profileMargin),
        padding: EdgeInsets.all(WebsiteTheme.profilePadding),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: this.shadowOffset,
              offset: Offset(
                10.0,
                10.0,
              ),
            )
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(20)
          ),
          color: WebsiteTheme.backgroundColor
        ),
        child: ListView(
          children: <Widget>[
            Align(
              alignment: titleAlignment,
              child: Text(
                profileName,
                style: TextStyle(
                  fontSize: 20,
                  color: WebsiteTheme.secondaryTextColor
                ),
              )
            ),
            SizedBox(height: 15),
            profileContents
          ]
        ),
      ),
    );
  }

  @override
  void initState() {
    this.shadowOffset = 20.0;
    super.initState();
  }

  void grow(PointerEnterEvent e){
    setState(() {
      this.shadowOffset = 30.0;
    });
  }

  void shrink(PointerExitEvent e){
    setState(() {
      this.shadowOffset = 20.0;
    });
  }
}