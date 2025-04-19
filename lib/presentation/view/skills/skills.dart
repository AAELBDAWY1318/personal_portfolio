import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

// Define the Skill model
class Skill {
  final String skill;
  final int percentage;

  Skill({required this.skill, required this.percentage});
}

// Define the skills list
final List<Skill> skills = [
  Skill(skill: "Flutter", percentage: 90),
  Skill(skill: "Dart", percentage: 95),
  Skill(skill: "BLoC", percentage: 80),
  Skill(skill: "GetX", percentage: 60),
  Skill(skill: "Git & GitHub", percentage: 90),
  Skill(skill: "Clean Architecture", percentage: 85),
  Skill(skill: "SOLD", percentage: 70),
  Skill(skill: "Problem Solving", percentage: 80),
  Skill(skill: "API Integration", percentage: 80),
];

// Define constants (to replace undefined ones)
const Color kCaptionColor = Colors.white70; // Light gray for captions in dark theme
const double kMobileMaxWidth = 450.0; // Matches typical mobile breakpoint

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ResponsiveBreakpoints.of(context).smallerThan('TABLET');

    return Container(
      color: Colors.grey[900],
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return ResponsiveBreakpoints.builder(
              breakpoints: [
                const Breakpoint(start: 0, end: 450, name: MOBILE),
                const Breakpoint(start: 451, end: 800, name: TABLET),
                const Breakpoint(start: 801, end: 1200, name: DESKTOP),
                const Breakpoint(start: 1201, end: double.infinity, name: '4K'),
              ],
              child: Flex(
                direction: isMobile ? Axis.vertical : Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!isMobile)
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            "assets/images/per.png",
                            width: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  if (!isMobile) const SizedBox(width: 50),
                  if (isMobile) const SizedBox(height: 20),
                  Expanded(
                    flex: isMobile ? 0 : 4,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SKILLS",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 28,
                              height: 1.3,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "My technical skills and proficiency levels",
                            style: TextStyle(
                              color: kCaptionColor,
                              fontSize: 16,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(height: 15),
                          ...skills.map((skill) => Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: skill.percentage,
                                  child: Container(
                                    height: 38,
                                    color: Colors.white,
                                    padding: const EdgeInsets.only(left: 10),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      skill.skill,
                                      style: const TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 100 - skill.percentage,
                                  child: const Divider(color: Colors.white, height: 1),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "${skill.percentage}%",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}