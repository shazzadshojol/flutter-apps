import 'package:flutter/material.dart';
import 'profile_Page.dart';

void main() {
  runApp(Profile_App());
}

class Profile_App extends StatefulWidget {
  const Profile_App({super.key});

  @override
  State<Profile_App> createState() => _Profile_AppState();
}

class _Profile_AppState extends State<Profile_App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile_page(),
    );
  }
}
