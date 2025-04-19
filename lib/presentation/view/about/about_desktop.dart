import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/presentation/widgets/about_me_text.dart';
import 'package:personal_portfolio/presentation/widgets/tools_tech.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      height: height,
      color: Colors.grey[900],
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "\nAbout Me",
              style: GoogleFonts.montserrat(
                fontSize: height * 0.075,
                fontWeight: FontWeight.w100,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: AboutMeText(
                    fontSize: width <= 1100 ? 14 : 16,
                  ),
                ),
                (width <= 950 && width >= 1185)
                    ? Container()
                    : Expanded(child: Container()),
                width >= 1185
                    ? const Expanded(child: ToolsTech())
                    : const ToolsTech()
              ],
            ),
            SizedBox(
              height: height * 0.055,
            ),
          ],
        ),
      ),
    );
  }
}
