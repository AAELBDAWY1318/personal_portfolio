import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const Color myPrimaryColor = Color(0xffC0392B);
const Color kPrimaryColor = Color.fromRGBO(21, 181, 114, 1);
const Color kBackgroundColor = Color.fromRGBO(7, 17, 26, 1);
const Color kDangerColor = Color.fromRGBO(249, 77, 30, 1);
const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);

// Social Media
const mySocialIcons = [
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  "https://img.icons8.com/?size=100&id=7OeRNqg6S7Vf&format=png&color=000000"
];

const mySocialLinks = [
  "www.linkedin.com/in/abdullah-awad-317532233",
  "https://github.com/AAELBDAWY1318",
  "https://www.facebook.com/abdullah.awad.436385",
  "https://wa.me/+201112798254"
];

// URL Launcher
void launchURL(String _url) async => await canLaunchUrl(Uri.parse(_url))
    ? await launchUrl(Uri.parse(_url))
    : throw 'Could not launch $_url';

// Tools & Tech (Based on actual experience)
final myTools = [
  "Flutter",
  "Dart",
  "Firebase",
  "Bloc",
  "REST APIs",
  "Hive",
  "SharedPreferences",
  "Clean Architecture",
  "Localization"
];

