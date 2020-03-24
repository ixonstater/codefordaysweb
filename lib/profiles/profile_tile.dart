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
  double mobileWidth = 570;
  double shadowOffset;
  double imgDimension = 200;
  _ProfileTileState(this.imgPth, this.profileName, this.profileText) : super();

  Widget build(BuildContext build){
    var mediaData = MediaQuery.of(build);
    var width = mediaData.size.width;
    var titleAlignment = this.mobileWidth < width ? Alignment.topLeft : Alignment.center;

    Widget profileContents;

    if(this.mobileWidth < width){
      profileContents = Row(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              this.imgPth,
              width: this.imgDimension,
              height: this.imgDimension
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
                width: this.imgDimension,
                height: this.imgDimension
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
          physics: ClampingScrollPhysics(),
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