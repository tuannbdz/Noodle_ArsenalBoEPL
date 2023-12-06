import 'package:flutter/material.dart';
import 'package:tuan_s_application2/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue100,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray30001,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo5001,
      );
  static BoxDecoration get fillIndigo400 => BoxDecoration(
        color: appTheme.indigo400,
      );
  static BoxDecoration get fillIndigo5002 => BoxDecoration(
        color: appTheme.indigo5002,
      );
  static BoxDecoration get fillIndigo5003 => BoxDecoration(
        color: appTheme.indigo5003,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red5001,
      );
  static BoxDecoration get fillRed5002 => BoxDecoration(
        color: appTheme.red5002,
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal100,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow500,
      );
  static BoxDecoration get fillYellow100 => BoxDecoration(
        color: appTheme.yellow100,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder3 => BorderRadius.circular(
        3.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL14 => BorderRadius.only(
        topLeft: Radius.circular(14.h),
        topRight: Radius.circular(14.h),
        bottomLeft: Radius.circular(5.h),
        bottomRight: Radius.circular(5.h),
      );
  static BorderRadius get customBorderTL52 => BorderRadius.vertical(
        top: Radius.circular(52.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder13 => BorderRadius.circular(
        13.h,
      );
  static BorderRadius get roundedBorder18 => BorderRadius.circular(
        18.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
