import 'package:flutter/material.dart';

import 'pages/movie_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Douban Movie',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: MovieHomePage(),
    );
  }
}
