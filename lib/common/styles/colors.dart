import 'package:flutter/material.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.white,
    required this.black,
    required this.background,
    required this.backgroundFilters,
    required this.border,
    required this.backgroundHeaders,
    required this.secondaryText,
  });

  /// Чистый белый [FFFFFF]
  final Color white;

  /// Чистый чёрный [000000]
  final Color black;

  /// Цвет заднего фона [FFFFFF]
  final Color background;

  /// Задний фон для фильтров [0E0E10]
  final Color backgroundFilters;

  /// Границы кнопок [333333]
  final Color border;

  /// Зданий фон заголовков [CCCCCC]
  final Color backgroundHeaders;

  /// Дополнительный текст []
  final Color secondaryText;

  @override
  CustomColors copyWith({
    Color? white,
    Color? black,
    Color? background,
    Color? backgroundFilters,
    Color? border,
    Color? backgroundHeaders,
    Color? secondaryText,
  }) {
    return CustomColors(
      white: white ?? this.white,
      black: black ?? this.black,
      background: background ?? this.background,
      backgroundFilters: backgroundFilters ?? this.backgroundFilters,
      border: border ?? this.border,
      backgroundHeaders: backgroundHeaders ?? this.backgroundHeaders,
      secondaryText: secondaryText ?? this.secondaryText,
    );
  }

  @override
  ThemeExtension<CustomColors> lerp(
      ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      background: Color.lerp(background, other.background, t)!,
      backgroundFilters:
          Color.lerp(backgroundFilters, other.backgroundFilters, t)!,
      border: Color.lerp(border, other.border, t)!,
      backgroundHeaders:
          Color.lerp(backgroundHeaders, other.backgroundHeaders, t)!,
      secondaryText:
          Color.lerp(secondaryText, other.secondaryText, t)!,
    );
  }

  static const light = CustomColors(
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
    background: Color(0xFFFFFFFF),
    backgroundFilters: Color(0xFF0E0E10),
    border: Color(0xFF333333),
    backgroundHeaders: Color(0xFFCCCCCC),
    secondaryText: Color(0xFFC0C0C0),
  );
}
