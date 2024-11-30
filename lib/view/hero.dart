import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/resu.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          "Welcome to Love and Eat",
          style: TextStyle(
            fontSize: 28,
            color: Colors.yellow,
            fontWeight: FontWeight.bold,
          ),
        ).animate().fadeIn(duration: 1000.ms).moveY(begin: 30, end: 0, duration: 500.ms),
      ),
    );
  }
}
