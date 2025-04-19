import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/utils/constants.dart';

class ProjectCard extends StatefulWidget {
  final String projectIcon;
  final IconData? projectIconData;
  final String projectTitle;
  final String projectDescription;
  final String projectLink;
  final double cardWidth;
  final double? cardHeight;
  final String backImage;
  final Widget ? bottomWidget;

  const ProjectCard(
      {super.key,
      required this.backImage,
      this.bottomWidget,
      required this.projectIcon,
      required this.projectTitle,
      required this.projectDescription,
      required this.projectLink,
      this.projectIconData,
      required this.cardWidth,
      this.cardHeight});
  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => launchURL(widget.projectLink),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        width: widget.cardWidth,
        height: widget.cardHeight,
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: myPrimaryColor.withAlpha(200),
                      blurRadius: 12.0,
                      offset: const Offset(2.0, 3.0),
                    )
                  ]
                : []),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    widget.projectIcon,
                    height: height * 0.1,
                  ),
                ),
                Icon(
                  widget.projectIconData,
                  color: myPrimaryColor,
                  size: height * 0.1,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Expanded(
                  child: Text(
                    widget.projectTitle,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: height * 0.02,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Expanded(
                  child: Text(
                    widget.projectDescription,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        fontSize: height * 0.015,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w100,
                        height: width >= 600 ? 2.0 : 1.5),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
               // widget.bottomWidget,
              ],
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHover ? 0.0 : 1.0,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(widget.backImage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
