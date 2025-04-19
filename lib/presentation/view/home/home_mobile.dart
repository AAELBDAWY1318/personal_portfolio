import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/presentation/widgets/social_media_icon_button.dart';
import 'package:personal_portfolio/utils/constants.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            right: -width * 0.1,
            child: Opacity(
              opacity: 0.7,
              child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset('assets/images/personal.png',
                      height: height * 0.65)),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "HEY THERE! ",
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w200),
                    ),
                    Image.asset(
                      "assets/images/hi.gif",
                      height: height * 0.03,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  "I am,",
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.025, fontWeight: FontWeight.w200),
                ),
                Text(
                  "Abdullah",
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.055, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Awad",
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.055,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.1),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.play_arrow_rounded,
                      color: myPrimaryColor,
                    ),
                    TyperAnimatedTextKit(
                        isRepeatingAnimation: true,
                        speed: const Duration(milliseconds: 50),
                        textStyle: GoogleFonts.montserrat(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w200),
                        text: const [
                          " Flutter Developer",
                          " Competitive Coding",
                          "Graduated from BFCAI"
                        ]),
                  ],
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < mySocialIcons.length; i++)
                      SocialMediaIconBtn(
                        icon: mySocialIcons[i],
                        socialLink: mySocialLinks[i],
                        height: height * 0.03,
                        horizontalPadding: 2.0,
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
