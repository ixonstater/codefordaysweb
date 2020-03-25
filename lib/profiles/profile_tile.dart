import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../resources/theme.dart';

class ProfileTile extends StatefulWidget{
  final String imgPth;
  final String profileName;
  final String profileText;

  ProfileTile(Key key, this.imgPth, this.profileName, this.profileText) : super(key: key);
  @override
  _ProfileTileState createState() => _ProfileTileState(this.imgPth, this.profileName, this.profileText);
}

class _ProfileTileState extends State<ProfileTile> {
  String imgPth;
  String profileName;
  String profileText;
  double shadowOffset;
  final double mobileWidth = 570;
  final double mobileHeight = 250;
  _ProfileTileState(this.imgPth, this.profileName, this.profileText) : super();

  Widget build(BuildContext build){
    var mediaData = MediaQuery.of(build);
    var width = mediaData.size.width;
    var titleAlignment = this.mobileWidth < width ? Alignment.topLeft : Alignment.center;

    return MouseRegion(
      onEnter: this.grow,
      onExit: this.shrink,

      child: Container(
        height: 400,
        margin: EdgeInsets.all(WebsiteTheme.profileMargin),
        padding: EdgeInsets.all(WebsiteTheme.profilePadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20)
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 1.0,
              offset: Offset(
                this.shadowOffset,
                this.shadowOffset,
              ),
            )
          ],
          color: WebsiteTheme.backgroundColor
        ),
        child: Column(
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
            this.getProfileContents(build)
          ]
        ),
      ),
    );
  }

  Widget getProfileContents(BuildContext build){
    double imgDimensionLandscape = 200;
    double imgDimensionPortrait = 300;
    var mediaData = MediaQuery.of(build);
    var width = mediaData.size.width;
    var height = mediaData.size.height;

    Widget profileContents;

    if(this.mobileWidth < width){
      profileContents = Row(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              this.imgPth,
              width: imgDimensionLandscape,
              height: imgDimensionLandscape
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
      profileContents = Align(
        alignment: Alignment.center,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Image.asset(
            imgPth,
            width: imgDimensionPortrait,
            height: imgDimensionPortrait,
          )
        )
      );
    }

    return profileContents;
  }

  @override
  void initState() {
    this.shadowOffset = 10.0;
    super.initState();
  }

  void grow(PointerEnterEvent e){
    setState(() {
      this.shadowOffset = 15.0;
    });
  }

  void shrink(PointerExitEvent e){
    setState(() {
      this.shadowOffset = 10.0;
    });
  }
}