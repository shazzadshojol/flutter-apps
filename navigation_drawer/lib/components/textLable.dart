

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTextWidget extends StatelessWidget {
  NewTextWidget({
    super.key, required this.lable
  });
  final String lable;
  @override
  Widget build(BuildContext context) {
    return Text(
      lable,
      style: GoogleFonts.lato(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.italic,
          color: Colors.white),
    );
  }
}
