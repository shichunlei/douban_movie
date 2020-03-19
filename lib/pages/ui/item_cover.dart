import 'package:douban_movie/utils/utils.dart';
import 'package:douban_movie/widgets/image_load_view.dart';
import 'package:flutter/material.dart';

class ItemCover extends StatelessWidget {
  final String url;
  final VoidCallback onTop;
  final bool offstage;

  ItemCover(
    this.url, {
    Key key,
    this.onTop,
    this.offstage = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = (Utils.width - 5 * 4) / 2;

    return GestureDetector(
      child: Container(
          child: Stack(children: <Widget>[
            ImageLoadView(
              url,
              width: double.infinity,
              height: double.infinity,
              borderRadius: BorderRadius.circular(5.0),
            ),
            Center(
                child: Offstage(
                    offstage: offstage,
                    child: Icon(Icons.play_arrow, color: Colors.white)))
          ]),
          width: width,
          padding: const EdgeInsets.all(5.0)),
      onTap: onTop,
    );
  }
}
