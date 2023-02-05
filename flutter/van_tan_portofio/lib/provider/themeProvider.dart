import 'package:flutter/cupertino.dart';
import 'package:van_tan_portofio/provider/themePreference.dart';

class ThemeProvider extends ChangeNotifier {
  ThemePreference darkThemePref = ThemePreference();
  ScrollController scrollController = ScrollController();

  get_scroll() => scrollController;

  set_scroll(int i) {
    scrollController.animateTo(
      i == 0 ? 100 : 0,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
    notifyListeners();
  }

  // App Theme
  bool _lightTheme = false;
  bool get lightTheme => _lightTheme;

  set lightTheme(bool value) {
    _lightTheme = value;
    darkThemePref.setDarkTheme(value);

    notifyListeners();
  }
}
