import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray40002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray40002,
      );
  static get bodyLargeBluegray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyLargeBluegray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmall8 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 8.fSize,
      );
  static get bodySmallBluegray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodySmallBluegray2008 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 8.fSize,
      );
  static get bodySmallBluegray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodySmallBluegray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 8.fSize,
      );
  static get bodySmallGray80099 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray80099,
      );
  static get bodySmallIndigo900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigo900,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallWhiteA7008 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 8.fSize,
      );
  // Headline text style
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w900,
      );
  static get headlineSmallBluegray400 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  // Label text style
  static get labelLargeBluegray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray40001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeLatoWhiteA700 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.whiteA700.withOpacity(0.75),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLatoWhiteA700SemiBold =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.whiteA700.withOpacity(0.8),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeLatoWhiteA700SemiBold13 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelSmallBluegray40001 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get labelSmallBluegray40002 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray40002,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallBluegray90001 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallBluegray90001Bold =>
      theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallBluegray90001_1 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get labelSmallDeeppurple300 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.deepPurple300,
      );
  static get labelSmallGray300 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray300,
      );
  static get labelSmallGray700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallIndigo400 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.indigo400,
      );
  static get labelSmallIndigoA400 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.indigoA400,
      );
  // Title text style
  static get titleLargeBlack => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBlack900Black => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w900,
      );
  static get titleLargeBlack900SemiBold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBluegray400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBluegray90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBluegray90001Bold =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumIndigo400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo400,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get pTSansCaption {
    return copyWith(
      fontFamily: 'PT Sans Caption',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
