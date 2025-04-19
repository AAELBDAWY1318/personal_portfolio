import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/constants.dart';

class ToolTechWidget extends StatelessWidget {
  final String techName;

  const ToolTechWidget({super.key, required this.techName});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: myPrimaryColor,
            size: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(" $techName")
        ],
      ),
    );
  }
}