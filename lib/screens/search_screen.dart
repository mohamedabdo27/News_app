import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app1/Widgets/container2.dart';
import 'package:news_app1/Widgets/elevatedbutton1.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 60 / 812,
              width: MediaQuery.of(context).size.width * 345 / 375,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 12, bottom: 12, left: 16, right: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.nunito(fontSize: 12),
                    suffixIcon: Icon(Icons.cancel),
                    hintText: "COVID New Variant",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide:
                          BorderSide(width: 2, color: Color(0xff202663)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide:
                          BorderSide(width: 2, color: Color(0xff202663)),
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                ElevatedButton1(
                  text: "Filter",
                  bgColor: Color(0xffFF3A44),
                  fgColor: const Color(0xffFFFFFF),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * .04),
                ElevatedButton1(text: "Healthy"),
                SizedBox(width: MediaQuery.of(context).size.width * .04),
                ElevatedButton1(text: "Technology"),
                SizedBox(width: MediaQuery.of(context).size.width * .04),
                ElevatedButton1(text: "Finace"),
                SizedBox(width: MediaQuery.of(context).size.width * .04),
                ElevatedButton1(text: "Arts"),
              ]),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            Text(
              "About 11,130,000 results for COVID New Variant.",
              style: GoogleFonts.nunito(fontSize: 14, color: Color(0xff041E2F)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  Container2(
                      image: "assets/images/news2_1.png",
                      text1:
                          'What to do if youre planning or attending a wedding during the pandemic',
                      text2: "Kristen Rogers",
                      text3: "Sunday, 9 May 2021"),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Container2(
                      image: "assets/images/news2_2.png",
                      text1:
                          "Doctors on digital front lines help fight India’s Covid surge",
                      text2: "Shepard Smith",
                      text3: "Friday, 7 May 2021"),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Container2(
                      image: "assets/images/news2_3.png",
                      text1: "4 ways families can ease anxiety together",
                      text2: "Zain Korsgaard",
                      text3: "Sunday, 9 May 2021"),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Container2(
                      image: "assets/images/news2_4.png",
                      text1: "4 ways families can ease anxiety together",
                      text2: "Zain Korsgaard",
                      text3: "Sunday, 9 May 2021"),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Container2(
                      image: "assets/images/news2_5.png",
                      text1: "4 ways families can ease anxiety together",
                      text2: "Zain Korsgaard",
                      text3: "Sunday, 9 May 2021"),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
