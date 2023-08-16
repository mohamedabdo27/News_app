import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Container1 extends StatelessWidget {
  final String bgImage, text1, text2, text3;

  const Container1(
      {super.key,
      required this.bgImage,
      required this.text1,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.only(top: 80, left: 8, right: 8, bottom: 8),
      height: MediaQuery.of(context).size.height * 240 / 812,
      width: MediaQuery.of(context).size.width * 321 / 375,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(bgImage))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          text1,
          style: GoogleFonts.nunito(
              fontSize: 10, color: const Color.fromARGB(255, 187, 21, 21)),
        ),
        Text(
          text2,
          style:
              GoogleFonts.numans(fontSize: 16, color: const Color(0xffFFFFFF)),
        ),
        const Spacer(),
        Text(
          text3,
          style:
              GoogleFonts.nunito(fontSize: 10, color: const Color(0xffFFFFFF)),
        )
      ]),
    );
  }
}
