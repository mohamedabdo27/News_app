import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Container2 extends StatelessWidget {
  final String image, text1, text2, text3;

  Container2({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: MediaQuery.of(context).size.height * 128 / 812,
      width: MediaQuery.of(context).size.width * 345 / 375,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text1,
              style: GoogleFonts.numans(
                  fontSize: 14, color: const Color(0xffFFFFFF))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text2,
                style: GoogleFonts.nunito(
                    fontSize: 12, color: const Color(0xffFFFFFF)),
              ),
              Text(
                text3,
                style: GoogleFonts.nunito(
                    fontSize: 12, color: const Color(0xffFFFFFF)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
