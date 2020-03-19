import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'dimens.dart';

/// 间隔
class Gaps {
  /// 水平间隔
  static Widget hGap3 = SizedBox(width: Dimens.gap_dp3);
  static Widget hGap4 = SizedBox(width: Dimens.gap_dp4);
  static Widget hGap5 = SizedBox(width: Dimens.gap_dp5);
  static Widget hGap6 = SizedBox(width: Dimens.gap_dp6);
  static Widget hGap8 = SizedBox(width: Dimens.gap_dp8);
  static Widget hGap10 = SizedBox(width: Dimens.gap_dp10);
  static Widget hGap12 = SizedBox(width: Dimens.gap_dp12);
  static Widget hGap15 = SizedBox(width: Dimens.gap_dp15);
  static Widget hGap16 = SizedBox(width: Dimens.gap_dp16);
  static Widget hGap20 = SizedBox(width: Dimens.gap_dp20);

  /// 垂直间隔
  static Widget vGap3 = SizedBox(height: Dimens.gap_dp3);
  static Widget vGap4 = SizedBox(height: Dimens.gap_dp4);
  static Widget vGap5 = SizedBox(height: Dimens.gap_dp5);
  static Widget vGap6 = SizedBox(height: Dimens.gap_dp6);
  static Widget vGap8 = SizedBox(height: Dimens.gap_dp8);
  static Widget vGap10 = SizedBox(height: Dimens.gap_dp10);
  static Widget vGap12 = SizedBox(height: Dimens.gap_dp12);
  static Widget vGap15 = SizedBox(height: Dimens.gap_dp15);
  static Widget vGap16 = SizedBox(height: Dimens.gap_dp16);
  static Widget vGap20 = SizedBox(height: Dimens.gap_dp20);

  static Widget hGap(double w) {
    return SizedBox(width: w);
  }

  static Widget vGap(double h) {
    return SizedBox(height: h);
  }
}

class TextStyles {
  static TextStyle textStyle(
      {double fontSize: Dimens.font_sp12,
      Color color: Colors.white,
      FontWeight fontWeight}) {
    return TextStyle(
        fontSize: fontSize,
        color: color,
        decoration: TextDecoration.none,
        fontWeight: fontWeight);
  }

  static TextStyle textWhite14 = textStyle(fontSize: Dimens.font_sp14);

  static TextStyle textWhiteBold12 = textStyle(fontWeight: FontWeight.bold);

  static TextStyle textWhiteBold14 =
      textStyle(fontSize: Dimens.font_sp14, fontWeight: FontWeight.bold);

  static TextStyle textWhite16 = textStyle(fontSize: Dimens.font_sp16);

  static TextStyle textWhite20 = textStyle(fontSize: Dimens.font_sp20);

  static TextStyle textWhiteBold22 =
      textStyle(fontSize: Dimens.font_sp22, fontWeight: FontWeight.bold);

  static TextStyle textWhite22 = textStyle(fontSize: Dimens.font_sp22);
}
