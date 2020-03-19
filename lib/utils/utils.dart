import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:ui' as ui show window;

import 'package:palette_generator/palette_generator.dart';

class Utils {
  /// 获取运行平台是Android还是IOS
  static bool get isAndroid => Platform.isAndroid;

  static bool get isIOS => Platform.isIOS;

  /// 字符串转颜色
  ///
  /// [string] 字符串
  ///
  static Color strToColor(String string) {
    assert(string.length > 1);
    final int hash = string.hashCode & 0xffff;
    final double hue = (360.0 * hash / (1 << 15)) % 360.0;
    return HSVColor.fromAHSV(1.0, hue, 0.4, 0.90).toColor();
  }

  /// 屏幕宽
  ///
  static double get width {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.size.width;
  }

  /// RPX 用于屏幕适配（比例适配）
  ///
  static double get rpx {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.size.width / 750;
  }

  /// 屏幕高
  ///
  static double get height {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.size.height;
  }

  /// 标题栏高度（包括状态栏）
  ///
  static double get navigationBarHeight {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.padding.top + kToolbarHeight;
  }

  /// 状态栏高度
  ///
  static double get topSafeHeight {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.padding.top;
  }

  /// 底部状态栏高度
  ///
  static double get bottomSafeHeight {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.padding.bottom;
  }

  static Future<Color> getImageLightVibrantColor(String imagePath,
      {Color defaultColor: Colors.white30, String type: "network"}) async {
    PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(type == "network"
            ? NetworkImage(imagePath)
            : AssetImage(imagePath));

    return paletteGenerator.lightVibrantColor?.color ?? defaultColor;
  }

  static Future<Color> getImageDominantColor(String imagePath,
      {Color defaultColor: Colors.blueAccent, String type: "network"}) async {
    PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(type == "network"
            ? NetworkImage(imagePath)
            : AssetImage(imagePath));

    return paletteGenerator.dominantColor?.color ?? defaultColor;
  }

  static Future<Color> getImageDarkMutedColor(String imagePath,
      {Color defaultColor: Colors.blueAccent, String type: "network"}) async {
    PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(type == "network"
            ? NetworkImage(imagePath)
            : AssetImage(imagePath));

    return paletteGenerator.darkMutedColor?.color ?? defaultColor;
  }

  /// 16进制颜色值转换为10进制值
  ///
  /// [colorStr] 颜色值 #FFEE22
  /// [alpha] 透明度（16进制）
  ///
  static int getColorHexFromStr(String colorStr, {String alpha: "FF"}) {
    if (colorStr == null) {
      return 0;
    }
    colorStr = colorStr.replaceAll("#", "");
    if (colorStr.length == 6) {
      colorStr = alpha + colorStr;
    }
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }
}
