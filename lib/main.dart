import 'package:flutter/material.dart';
import 'resources/theme.dart';
import 'homepage.dart';
import 'profiles/josh.dart' show JoshProfile;
import 'profiles/ashley.dart' show AshleyProfile;
import 'profiles/than.dart' show ThanProfile;

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
      initialRoute: '/',
      routes: {
        '/' : (context) => MyHomePage(),
        '/josh_profile' : (context) => JoshProfile(key),
        '/ashley_profile' : (context) => AshleyProfile(key),
        '/than_profile' : (context) => ThanProfile()
      }
    );
  }
}
