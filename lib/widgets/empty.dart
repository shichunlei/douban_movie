import 'package:douban_movie/res/styles.dart';
import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  final String text;
  final String imageAsset;

  EmptyPage({
    Key key,
    this.text: '暂无数据',
    this.imageAsset: 'assets/empty.jpeg',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Image.asset('$imageAsset', width: 150, height: 150),
        Gaps.vGap20,
        Text('$text'),
      ]),
    );
  }
}
