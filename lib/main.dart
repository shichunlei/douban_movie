import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/theme_provider.dart';
import 'splash.dart';
import 'utils/sp_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.getInstance();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => ThemeProvider()..init(),
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (BuildContext context, ThemeProvider value, Widget child) {
        return MaterialApp(
          title: 'Douban Movie',
          theme: ThemeData(primaryColor: Color(value.theme)),
          home: SplashScreenPage(),
        );
      },
    );
  }
}
