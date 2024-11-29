import 'package:flutter/material.dart';
import 'package:loveandeat/view/screen.dart';
import 'package:loveandeat/viewcontroller/provider.dart';
import 'package:provider/provider.dart';

// Main App Entry
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppState(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant Homepage',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ResponsiveHomepage(),
    );
  }
}


