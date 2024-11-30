import 'package:flutter_test/flutter_test.dart';
import 'package:loveandeat/viewcontroller/provider.dart';


void main() {
  group('AppState Tests', () {
    test('Initial section is Home', () {
      final appState = AppState();
      expect(appState.currentSection, "Home");
    });

    test('Update section changes the currentSection', () {
      final appState = AppState();
      appState.updateSection("Menu");
      expect(appState.currentSection, "Menu");
    });
  });
}
