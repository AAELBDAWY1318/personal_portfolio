import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/view/home/home_destop.dart';
import 'package:personal_portfolio/utils/constants.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: myPrimaryColor,
        hintColor: myPrimaryColor,
        highlightColor: myPrimaryColor,
      ),
      home: const Scaffold(
        body: HomeDesktop(),
      ),
    );
  }
}
