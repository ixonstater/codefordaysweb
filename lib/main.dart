import 'package:flutter/material.dart';
import 'resources/theme.dart';
import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: WebsiteTheme.primaryColor,
        backgroundColor: WebsiteTheme.backgroundColor,
        accentColor: WebsiteTheme.accentColor,
        buttonColor: WebsiteTheme.buttonColor 
      ),
      home: MyHomePage(),
    );
  }
}
