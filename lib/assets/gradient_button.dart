import 'package:flutter/material.dart';
import 'package:virgoplace/assets/custom_colors.dart';
import 'package:virgoplace/assets/custom_textstyle.dart';

class GradientButton extends StatelessWidget {
  final String title;
  final Function()? function;
  const GradientButton({Key? key, required this.title, this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: function,
      child: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: 48,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: CustomColors.primary,
              boxShadow: [
                BoxShadow(
                  blurRadius: 16,
                  color: const Color(0xff8135f9).withOpacity(0.16),
                  offset: const Offset(0, 8),
                )
              ],
            ),
          ),
          Container(
            child: Text(
              title,
              style: CustomTextStyle(
                family: 'Nunito',
                weight: FontWeight.bold,
                size: 16,
                lineHeight: 1.5,
                textColor: Colors.white,
              ),
            ),
            height: 48,
            width: double.maxFinite,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.504),
                  const Color(0xff1ff1e3).withOpacity(0.496),
                  const Color(0xff8135f9).withOpacity(0.8),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
