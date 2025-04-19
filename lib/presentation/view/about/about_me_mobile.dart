import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/presentation/widgets/about_me_text.dart';
import 'package:personal_portfolio/presentation/widgets/tools_tech.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      color: Colors.grey[900],
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "About Me",
              style: GoogleFonts.montserrat(
                fontSize: height * 0.06,
                fontWeight: FontWeight.w100,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            const AboutMeText(
              textAlign: TextAlign.center,
              fontSize: 13,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            const ToolsTech(),
          ],
        ),
      ),
    );
  }
}
