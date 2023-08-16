import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElevatedButton1 extends StatelessWidget {
  Color? bgColor = Colors.white;
  Color? fgColor = Color(0xff2E0505);
  String text;
  ElevatedButton1({super.key, this.bgColor, this.fgColor, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: fgColor,
          // disabledBackgroundColor: Color(0xffFF3A44),
          // disabledForegroundColor: Color(0xffFFFFFF),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
      onPressed: () {},
      child: Text(text,
          style: GoogleFonts.nunito(
            fontSize: 12,
          )),
    );
  }
}
