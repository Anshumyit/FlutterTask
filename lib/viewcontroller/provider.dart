// State Management

import 'package:flutter/material.dart';


class AppState extends ChangeNotifier {
  String _currentSection = "Home";

  String get currentSection => _currentSection;

  void updateSection(String section) {
    _currentSection = section;
    notifyListeners();
  }

  // Create a map to store the hover state of each item
  Map<int, bool> _hoverStates = {};

  // Get the hover state of a specific item
  bool isHovered(int index) => _hoverStates[index] ?? false;

  // Set hover state when mouse enters or exits
  void setHover(int index, bool isHovered) {
    _hoverStates[index] = isHovered;
    notifyListeners();
  }
}