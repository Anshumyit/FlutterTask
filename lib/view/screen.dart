import 'package:flutter/material.dart';
import 'package:loveandeat/view/mobile.dart';
import 'package:loveandeat/view/table%20and%20dis.dart';

class ResponsiveHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taj Hotel'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return MobileLayout();
          } else if (constraints.maxWidth > 1200) {
            return TabletLayout();
          } else {
            return DesktopLayout();
          }
        },
      ),
    );
  }
}
