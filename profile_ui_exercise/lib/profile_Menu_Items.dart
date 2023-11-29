import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile_Menu_Items extends StatelessWidget {
  Profile_Menu_Items(
      {required this.text, required this.icon, required this.arrowShown});
  final String text;
  final IconData icon;
  final bool arrowShown;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      alignment: Alignment.center,
      height: 50,
      width: 500,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon),
          Text(
            '$text',
            style: GoogleFonts.lato(color: Colors.black, fontSize: 24),
          ),
          arrowShown ? Icon(Icons.arrow_forward) : Container(),
        ],
      ),
    );
  }
}
