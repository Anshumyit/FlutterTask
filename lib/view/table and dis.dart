import 'package:flutter/material.dart';
import 'package:loveandeat/view/mobile.dart';

class TabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: SingleChildScrollView(child: MobileLayout())),
      ],
    );
  }
}

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: MobileLayout()),
        Expanded(
          child: Container(
            color: Colors.grey[100],
            child: Center(
              child: Text(
                "Additional Content or Sidebar",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
