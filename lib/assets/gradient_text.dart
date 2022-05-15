import 'package:flutter/material.dart';
import 'package:virgoplace/assets/custom_textstyle.dart';

import 'custom_colors.dart';

class GradientText extends StatelessWidget {
  const GradientText({
    Key? key,
    required this.text,
    required this.gradient,
    required this.style,
    this.textAlign,
  }) : super(key: key);

  final String text;
  final TextStyle? style;
  final Gradient gradient;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: CustomTextStyle(
            size: 28,
            textColor: CustomColors.primary,
            weight: FontWeight.bold,
            lineHeight: 1.43,
          ),
          textAlign: textAlign,
        ),
        ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) => gradient.createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ),
          child: Text(
            text,
            style: style,
            textAlign: textAlign,
          ),
        ),
      ],
    );
  }
}
