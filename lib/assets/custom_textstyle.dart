import 'package:flutter/material.dart';
import 'package:virgoplace/assets/custom_colors.dart';

class CustomTextStyle extends TextStyle {
  final double? size;
  final double? lineHeight;
  final Color? textColor;
  final FontWeight? weight;
  final String? family;

  CustomTextStyle(
      {this.size, this.textColor, this.weight, this.family, this.lineHeight})
      : super(
          fontFamily: family ?? 'Ubuntu',
          color: textColor ?? CustomColors.text,
          fontSize: size ?? 14,
          fontWeight: weight ?? FontWeight.w400,
          height: lineHeight,
        );
}
