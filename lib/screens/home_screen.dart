import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app1/Widgets/container1.dart';
import 'package:news_app1/Widgets/container2.dart';
import 'package:news_app1/Widgets/elevatedbutton1.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 32 / 812,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 296 / 375,
                      child: TextField(
                        style: GoogleFonts.nunito(
                            fontSize: 12, color: const Color(0xff818181)),
                        decoration: InputDecoration(
                            suffixIcon: const Icon(
                                color: Color(0xff818181),
                                //ممكن ارجع احط اليها sizedbox
                                Icons.search),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  const BorderSide(color: Color(0xffF0F1FA)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  const BorderSide(color: Color(0xffF0F1FA)),
                            ),
                            hintText: "Dogecoin to the Moon..."),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffFF3A44),
                          borderRadius: BorderRadius.circular(16)),
                      height: MediaQuery.of(context).size.height * 32 / 812,
                      width: MediaQuery.of(context).size.width * 33 / 375,
                      child: Center(
                        child: SvgPicture.asset(
                            height: MediaQuery.of(context).size.height *
                                13.18 /
                                812,
                            width:
                                MediaQuery.of(context).size.width * 11.75 / 375,
                            "assets/images/Vector.svg"),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                height: MediaQuery.of(context).size.height * 21 / 812,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Latest News",
                      style: GoogleFonts.nanumGothic(
                          color: const Color(0xff000000),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 16 / 812,
                      width: MediaQuery.of(context).size.width * 39 / 375,
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          "See All",
                          style: GoogleFonts.nunito(
                              fontSize: 12, color: const Color(0xff0080FF)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 13.18 / 812,
                      width: MediaQuery.of(context).size.width * 29.15 / 375,
                    ),
                    const Icon(color: Color(0xff0080FF), Icons.arrow_forward),
                  ],
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container1(
                        bgImage: "assets/images/news.png",
                        text1: "by Ryan Browne",
                        text2:
                            "Crypto investors should be prepared to lose all their money, BOE governor says",
                        text3:
                            "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money."),
                    Container1(
                        bgImage: "assets/images/news2.png",
                        text1: "by Ryan Browne",
                        text2:
                            "Crypto investors should be prepared to lose all their money, BOE governor says",
                        text3:
                            "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money."),
                    Container1(
                        bgImage: "assets/images/news3.png",
                        text1: "by Ryan Browne",
                        text2:
                            "Crypto investors should be prepared to lose all their money, BOE governor says",
                        text3:
                            "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money."),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton1(
                      text: "Helthy",
                      bgColor: const Color(0xffFF3A44),
                      fgColor: const Color(0xffFFFFFF),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * .04),
                    ElevatedButton1(text: "Technology"),
                    SizedBox(width: MediaQuery.of(context).size.width * .04),
                    ElevatedButton1(text: "Finance"),
                    SizedBox(width: MediaQuery.of(context).size.width * .04),
                    ElevatedButton1(text: "Arts"),
                    SizedBox(width: MediaQuery.of(context).size.width * .04),
                    ElevatedButton1(text: "Sport"),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Container2(
                              image: "assets/images/news-28377143.png",
                              text1:
                                  "5 things to know about the 'conundrum' of \n lupus",
                              text2: "Matt Villano",
                              text3: "Sunday, 9 May 2021"),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.04),
                          Container2(
                              image: "assets/images/man-reading.png",
                              text1:
                                  "4 ways families can ease anxiety\n together",
                              text2: "Zain Korsgaard",
                              text3: "Sunday, 9 May 2021"),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.04),
                          Container2(
                              image: "assets/images/tv-news.png",
                              text1:
                                  "What to do if you're planning or \nattending a wedding during the\n pandemic",
                              text2: "Matt Villano",
                              text3: "Sunday, 9 May 2021s"),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0, 0.7),
                      child: Container(
                        padding: const EdgeInsets.only(
                            bottom: 8, top: 16, right: 40, left: 40),
                        decoration: BoxDecoration(
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(32)),
                        height: MediaQuery.of(context).size.height * 66 / 812,
                        width: MediaQuery.of(context).size.width * 289 / 375,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                InkWell(
                                    child: SvgPicture.asset(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                19.65 /
                                                812,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                22 /
                                                375,
                                        "assets/images/Vector2.svg")),
                                const Spacer(),
                                Text(
                                  "Home",
                                  style: GoogleFonts.nunito(
                                      fontSize: 10,
                                      color: const Color(0xff2E0505)),
                                )
                              ],
                            ),
                            const Spacer(flex: 1),
                            Column(
                              children: [
                                InkWell(
                                    child: SvgPicture.asset(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                18.5 /
                                                812,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                20 /
                                                375,
                                        "assets/images/Vector3.svg")),
                                const Spacer(),
                                Text(
                                  "Favorite",
                                  style: GoogleFonts.nunito(
                                      fontSize: 10,
                                      color: const Color(0xffA6A6A6)),
                                )
                              ],
                            ),
                            const Spacer(flex: 1),
                            Column(
                              children: [
                                InkWell(
                                    child: SvgPicture.asset(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                20 /
                                                812,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                20 /
                                                375,
                                        "assets/images/Vector4.svg")),
                                const Spacer(),
                                Text(
                                  "Profile",
                                  style: GoogleFonts.nunito(
                                      fontSize: 10,
                                      color: const Color(0xffA6A6A6)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
