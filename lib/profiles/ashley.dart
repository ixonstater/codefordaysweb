import 'package:flutter/material.dart';
import '../resources/text.dart';
import '../resources/theme.dart';

class AshleyProfile extends StatelessWidget{
  AshleyProfile(Key key): super(key: key);

  @override
  Widget build (BuildContext build){
    return Container(
      height: 400,
      margin: EdgeInsets.all(WebsiteTheme.profileMargin),
      padding: EdgeInsets.all(WebsiteTheme.profilePadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20)
        ),
        color: WebsiteTheme.primaryColor
      ),
      child: Text(
        "Ashley's Profile",
        style: TextStyle(
          fontSize: 20,
          color: WebsiteTheme.primaryTextColor
        ),
      ),
    );
  }
}