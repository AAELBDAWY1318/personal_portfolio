import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/view/about/about_desktop.dart';
import 'package:personal_portfolio/presentation/view/about/about_me_mobile.dart';
import 'package:personal_portfolio/presentation/view/about/about_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context)=> const AboutMobile(),
      tablet: (context)=> const AboutTab(),
      desktop: (context)=> const AboutDesktop(),
    );
  }
}