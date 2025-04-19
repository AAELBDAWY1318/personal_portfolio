import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeText extends StatelessWidget {
  final TextAlign? textAlign;
  final double? fontSize;

  const AboutMeText({super.key, this.textAlign, this.fontSize});

  TextStyle _textStyle(double ? fSize, bool bold) {
    return GoogleFonts.montserrat(
      fontSize: fSize ?? 14,
      fontWeight: !bold ? FontWeight.w100 : FontWeight.w400,
      letterSpacing: 1.0,
      height: 2.0,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign ?? TextAlign.left,
      text: TextSpan(children: [
        TextSpan(
          text:
          "Hi there 👋, I'm Abdullah Awad. I graduated from the Faculty of Computers and Artificial Intelligence at Benha University.\n\nI'm a Flutter developer passionate about building mobile applications that make a real impact. I enjoy working on clean architecture, state management, and integrating advanced features like localization, APIs, and Firebase. I'm also constantly learning and exploring new ideas to grow as a developer.",
          style: MediaQuery.of(context).size.width < 600
              ? _textStyle(fontSize!, false)
              : _textStyle(fontSize! + 2, false),
        ),
      ]),
    );
  }
}
