import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/widgets/tools_tech_widget.dart';
import 'package:personal_portfolio/utils/constants.dart';

class ToolsTech extends StatelessWidget {
  const ToolsTech({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Technologies I have worked with:\n"),
        Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < myTools.length; i++)
                    ToolTechWidget(
                      techName: myTools[i],
                    ),
                ],
              ),
            ])
      ],
    );
  }
}
