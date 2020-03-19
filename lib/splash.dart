import 'package:douban_movie/utils/route_util.dart';
import 'package:flutter/material.dart';

import 'pages/movie_home_page.dart';
import 'utils/utils.dart';
import 'widgets/skip_down_time_progress.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Image.asset("assets/splash.jpg", fit: BoxFit.cover)),
      Positioned(
          child: SkipDownTimeProgress(
              color: Colors.red,
              radius: 22.0,
              duration: Duration(seconds: 5),
              size: Size(25.0, 25.0),
              skipText: "跳过",
              onTap: () => goToHomePage(context),
              onFinishCallBack: (bool value) {
                if (value) goToHomePage(context);
              }),
          top: Utils.topSafeHeight + 20,
          right: 30),
    ]);
  }

  void goToHomePage(BuildContext context) async {
    pushAndRemovePage(context, MovieHomePage());
  }
}
