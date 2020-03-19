import 'package:flutter/material.dart';

void pushNewPage(BuildContext context, Widget routePage,
    {Function callBack, fullscreenDialog: false}) {
  Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => routePage,
              fullscreenDialog: fullscreenDialog))
      .then((value) {
    if (value != null) {
      callBack(value);
    }
  });
}
