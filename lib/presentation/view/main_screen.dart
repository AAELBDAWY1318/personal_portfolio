
import 'package:personal_portfolio/presentation/animations/entrance_fader.dart';
import 'package:personal_portfolio/presentation/view/about/about_me.dart';
import 'package:personal_portfolio/presentation/view/home/home.dart';
import 'package:personal_portfolio/presentation/view/portfolio/portfolio.dart';
import 'package:personal_portfolio/presentation/view/skills/skills.dart';
import 'package:personal_portfolio/presentation/widgets/arrow_top.dart';
import 'package:personal_portfolio/presentation/widgets/footer.dart';
import 'package:personal_portfolio/presentation/widgets/navigation_bar_logo.dart';
import 'package:personal_portfolio/utils/constants.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  final ScrollController _scrollController =
  ScrollController(initialScrollOffset: 25.0);
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionListener = ItemPositionsListener.create();

  final List<String> _sectionsName = [
    "Home",
    "About",
    "Skills",
    "Projects",
  ];

  final List<IconData> _sectionsIcons = [
    Icons.home,
    Icons.person,
    Icons.school,
    Icons.center_focus_weak_rounded,
    Icons.work,
    Icons.build,
    Icons.emoji_events,
    Icons.phone,
  ];

  void _scroll(int i) {
    _itemScrollController.scrollTo(index: i, duration: const Duration(seconds: 1));
  }

  Widget sectionWidget(int i) {
    if (i == 0) {
      return const HomePage();
    } else if (i == 1) {
      return const About();
    } else if (i == 2){
      return const Skills();
    } else if (i == 3) {
      return const Portfolio();
    } else if (i == 4) {
      return const SizedBox(
        height: 40.0,
      );
    } else if (i == 5) {
      return ArrowOnTop(
        onPressed: () => _scroll(0),
      );
    } else if (i == 6) {
      return Footer();
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: MediaQuery.of(context).size.width > 1000
          ? _appBarTabDesktop()
          : AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      drawer: MediaQuery.of(context).size.width < 1000 ? _appBarMobile() : null,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: RawScrollbar(
          controller: _scrollController,
          thumbColor: myPrimaryColor,
          thickness: 5.0,
          child: ScrollablePositionedList.builder(
            itemScrollController: _itemScrollController,
            itemPositionsListener: _itemPositionListener,
            itemCount: 11,
            itemBuilder: (context, index) {
              return sectionWidget(index);
            },
          ),
        ),
      ),
    );
  }

  Widget _appBarActions(String childText, int index, IconData icon) {
    return MediaQuery.of(context).size.width > 1000
        ? EntranceFader(
      offset: const Offset(0, -20),
      delay: const Duration(seconds: 3),
      duration: const Duration(seconds: 1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          hoverColor: myPrimaryColor,
          onPressed: () => _scroll(index),
          child: Text(
            childText,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    )
        : Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
          hoverColor: myPrimaryColor,
          onPressed: () => _scroll(index),
          child: Center(
            child: ListTile(
              leading: Icon(
                icon,
                color: Colors.white,
              ),
              title: Text(childText),
            ),
          )),
    );
  }

  PreferredSizeWidget _appBarTabDesktop() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: MediaQuery.of(context).size.width < 740
          ? const EntranceFader(
          duration: Duration(seconds: 1),
          offset: Offset(0, -20),
          delay: Duration(seconds: 3),
          child: NavBarLogo())
          : EntranceFader(
        offset: const Offset(0, -20),
        duration: const Duration(seconds: 1),
        delay: const Duration(seconds: 3),
        child: NavBarLogo(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
      ),
      actions: [
        for (int i = 0; i < _sectionsName.length; i++)
          _appBarActions(_sectionsName[i], i, _sectionsIcons[i]),
        EntranceFader(
          offset: const Offset(0, -20),
          delay: const Duration(seconds: 3),
          duration: const Duration(seconds: 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              color: Colors.green,
              hoverColor: Colors.white.withAlpha(150),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                //side: BorderSide(color: myPrimaryColor)
              ),
              onPressed: () {
                launchURL(mySocialLinks[3]);
              },
              child: Text(
                "WhatsApp",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                  color: Colors.white
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _appBarMobile() {
    return Drawer(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: NavBarLogo(
                  height: 28,
                ),
              ),
              for (int i = 0; i < _sectionsName.length; i++)
                _appBarActions(_sectionsName[i], i, _sectionsIcons[i]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: myPrimaryColor.withAlpha(150),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: const BorderSide(color: myPrimaryColor)),
                  onPressed: () {
                    launchURL(mySocialLinks[3]);
                  },
                  child: ListTile(
                    leading: const Icon(
                      Icons.book,
                      color: Colors.green,
                    ),
                    title: Text(
                      "WhatsApp",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w200,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}