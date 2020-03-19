import 'package:douban_movie/utils/sp_util.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  int _theme = Colors.red.value;

  void init() {
    _theme = SpUtil.getInt('theme', defValue: Colors.red.value);
    debugPrint('config get Theme $_theme');
  }

  int get theme => _theme;

  void setTheme(theme) async {
    _theme = theme;
    SpUtil.setInt('theme', theme);
    notifyListeners();
  }
}
