import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/view/home/home_destop.dart';
import 'package:personal_portfolio/presentation/view/home/home_mobile.dart';
import 'package:personal_portfolio/presentation/view/home/home_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const HomeMobile(),
      tablet: (context) => const HomeTab(),
      desktop: (context) => const HomeDesktop(),
    );
  }
}
