import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/view/portfolio/portfoilo_mobile.dart';
import 'package:personal_portfolio/presentation/view/portfolio/portfolio_destop.dart';

import 'package:responsive_builder/responsive_builder.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const PortfolioMobileTab(),
      tablet: (context) => const PortfolioMobileTab(),
      desktop: (context) => const PortfolioDesktop(),
    );
  }
}
