import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation_drawer/dafaults/defaults.dart';

import 'components/drawerItem.dart';
import 'components/textLable.dart';

void main() {
  runApp(Navigation_Page());
}

class Navigation_Page extends StatelessWidget {
  const Navigation_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigation_Menu(),
    );
  }
}

var indexClicked = 0;

class Navigation_Menu extends StatefulWidget {
  const Navigation_Menu({super.key});

  @override
  State<Navigation_Menu> createState() => _Navigation_MenuState();
}

class _Navigation_MenuState extends State<Navigation_Menu> {
  final pages = [
    Center(
      child: Text('inbox'),
    ),
    Center(
      child: Text('Starred'),
    ),
    Center(
      child: Text('Sent'),
    ),
    Center(
      child: Text('Drafts'),
    ),
    Center(
      child: Text('Spam'),
    ),
    Center(
      child: Text('Trash'),
    ),
  ];
  Function updateState(int index) {
    return () {
      setState(() {
        indexClicked = index;
      });
      Navigator.pop(context);
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: GoogleFonts.lato(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: pages[indexClicked],
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/drawer.jpg'),
                    fit: BoxFit.fill),
              ),
              padding: EdgeInsets.all(0),
              child: Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'John Rambo',
                      style: GoogleFonts.lato(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    // SizedBox(height: ),
                    NewTextWidget(lable: 'john@example.com',)


                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  DrawerItem(
                    index: 0,
                    onTap: updateState(0),
                  ),
                  DrawerItem(
                    index: 1,
                    onTap: updateState(1),
                  ),
                  DrawerItem(
                    index: 2,
                    onTap: updateState(2),
                  ),
                  DrawerItem(
                    index: 3,
                    onTap: updateState(3),
                  ),
                  DrawerItem(
                    index: 4,
                    onTap: updateState(4),
                  ),
                  DrawerItem(
                    index: 5,
                    onTap: updateState(5),
                  ),
                  SizedBox(height: 30),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: Defaults.drawerItemSelectedColor,
                    indent: 15,
                    endIndent: 15,
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      'JetMail',
                      style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromARGB(255, 76, 75, 75)),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Version 1.2.5',
                      style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                          color: const Color.fromARGB(255, 76, 75, 75)),
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: Defaults.drawerItemSelectedColor,
                    indent: 15,
                    endIndent: 15,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



