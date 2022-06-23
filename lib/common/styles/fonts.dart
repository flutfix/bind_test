import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextStyle extends ThemeExtension<CustomTextStyle> {
  const CustomTextStyle({
    required this.textR22,
    required this.textR19,
    required this.textR17,
    required this.textR15,
    required this.textR13,
  });

  /// Стандартный шрифт
  static const String _primaryFontFamily = 'Manrope';

  // Названия шрифтов сделаны таким образом: 'textR19'
  // R - Вес - Regular
  // 19 - Размер

  final TextStyle textR22;
  final TextStyle textR19;
  final TextStyle textR17;
  final TextStyle textR15;
  final TextStyle textR13;

  @override
  ThemeExtension<CustomTextStyle> copyWith({
    TextStyle? textR22,
    TextStyle? textR19,
    TextStyle? textR17,
    TextStyle? textR15,
    TextStyle? textR13,
  }) {
    return CustomTextStyle(
      textR22: textR22 ?? this.textR22,
      textR19: textR19 ?? this.textR19,
      textR17: textR17 ?? this.textR17,
      textR15: textR15 ?? this.textR15,
      textR13: textR13 ?? this.textR13,
    );
  }

  @override
  ThemeExtension<CustomTextStyle> lerp(
      ThemeExtension<CustomTextStyle>? other, double t) {
    if (other is! CustomTextStyle) {
      return this;
    }
    return CustomTextStyle(
      textR22: TextStyle.lerp(textR22, other.textR22, t)!,
      textR19: TextStyle.lerp(textR19, other.textR19, t)!,
      textR17: TextStyle.lerp(textR17, other.textR17, t)!,
      textR15: TextStyle.lerp(textR15, other.textR15, t)!,
      textR13: TextStyle.lerp(textR13, other.textR13, t)!,
    );
  }

  static final light = CustomTextStyle(
    textR22: TextStyle(
      fontFamily: _primaryFontFamily,
      fontSize: 22.sp,
      fontWeight: FontWeight.w400,
    ),
    textR19: TextStyle(
      fontFamily: _primaryFontFamily,
      fontSize: 19.sp,
      fontWeight: FontWeight.w400,
    ),
    textR17: TextStyle(
      fontFamily: _primaryFontFamily,
      fontSize: 17.sp,
      fontWeight: FontWeight.w400,
    ),
    textR15: TextStyle(
      fontFamily: _primaryFontFamily,
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
    ),
    textR13: TextStyle(
      fontFamily: _primaryFontFamily,
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
    ),
  );
}
