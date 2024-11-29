// State Management

import 'package:flutter/material.dart';


class AppState extends ChangeNotifier {
  String _currentSection = "Home";

  String get currentSection => _currentSection;

  void updateSection(String section) {
    _currentSection = section;
    notifyListeners();
  }
}