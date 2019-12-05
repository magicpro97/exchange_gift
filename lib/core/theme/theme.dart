import 'package:exchange_gift/core/theme/colors.dart';
import 'package:exchange_gift/core/theme/styles/text_styles.dart';
import 'package:flutter/material.dart';

final primaryTheme = ThemeData(
    backgroundColor: COLOR_BACKGROUND_LIGHT,
    canvasColor: COLOR_ACCENT,
    primaryColor: COLOR_PRIMARY,
    accentColor: COLOR_ACCENT,
    buttonTheme: ButtonThemeData(
      buttonColor: COLOR_PRIMARY,
    ),
    textTheme: TextTheme(
      button: TextStyles.whiteText,
    ));
