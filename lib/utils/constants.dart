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

// projects
final myProjectsBanner = [
  "assets/images/dd.png",
  "assets/images/odoo.png",
  "assets/images/shope.png",
  "assets/images/dalel.png",
  "assets/images/plant.png",
];

final myProjectsIcons = [
  "assets/images/d.png",
  "assets/images/erp.png",
  "assets/images/shopping.png",
  "assets/images/dal.png",
  "assets/images/planting.png",
];

final myProjectsDescriptions = [
  "is a simple and user-friendly platform that connects donors with people in need. Users can easily donate items, track their donations, and explore requests from verified individuals or organizations. The app aims to make giving more accessible and impactful through a clean interface and efficient communication.",
  "A Flutter-based mobile application that integrates with the Odoo ERP system to streamline HR operations. The app allows employees to manage their attendance, track asset assignments, and submit leave requests directly from their phones. It connects seamlessly with Odoo's backend through REST APIs, providing a smooth and efficient user experience.",
  " Flutter application that uses the Fake Store API to simulate a real-world e-commerce experience. The app displays products, categories, and product details while demonstrating key development concepts such as API integration, state management, clean architecture, and responsive UI design. ",
  "A Flutter-based educational app designed to guide users through historical periods and cultural insights in an engaging and informative way. The app fetches content from Firebase Firestore and presents it through a clean UI with support for localization and state management using Cubit. Dalel aims to make learning about history and heritage both accessible and enjoyable.",
  "Engineered a Flutter-based plant app with a my_plants table to efficiently manage plant data (plant_name, scientific_name, image_file), leveraging Data Source, Repository, and Cubit architecture, enhanced by robust image path error handling and a custom save button for optimized user experience",
];
final myProjectsTitles = [
  "Donation App",
  "Oddo HR App",
  "Fake Store",
  "Dalel App",
  "Plant Game App",
];

final myProjectsLinks = [
  "https://github.com/AAELBDAWY1318/final_project/tree/abdullah",
  "https://github.com/AAELBDAWY1318/",
  "https://github.com/AAELBDAWY1318/fake_shope",
  "https://github.com/AAELBDAWY1318/dalel",
  "https://github.com/AAELBDAWY1318/plant_game",
];
