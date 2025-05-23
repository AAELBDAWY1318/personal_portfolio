import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/view/main_screen.dart';
import 'package:personal_portfolio/utils/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Abdullah Awad",
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: myPrimaryColor,
        hintColor: myPrimaryColor,
        highlightColor: myPrimaryColor,
      ),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1200, name: DESKTOP),
          const Breakpoint(start: 1201, end: double.infinity, name: '4K'),
        ],
      ),
      home: const Scaffold(
        body: MainPage(),
      ),
    );
  }
}
