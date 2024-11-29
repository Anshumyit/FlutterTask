import 'package:flutter/material.dart';
import 'package:loveandeat/view/about.dart';
import 'package:loveandeat/view/footer.dart';
import 'package:loveandeat/view/hero.dart';
import 'package:loveandeat/view/menu.dart';

class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeroSection(),
          AboutSection(),
          MenuSection(),
          Footer(),
        ],
      ),
    );
  }
}
