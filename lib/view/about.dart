import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Us",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            "We bring you the best flavors from around the world. Our chefs use the finest ingredients to create dishes that are both delicious and memorable.",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
