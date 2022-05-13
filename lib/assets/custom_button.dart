import 'package:flutter/material.dart';
import 'package:virgoplace/assets/custom_colors.dart';
import 'package:virgoplace/assets/custom_textstyle.dart';

class CustomButton extends TextButton {
  final String title;
  final Function()? function;

  CustomButton({
    Key? key,
    required this.title,
    this.function,
  }) : super(
          key: key,
          onPressed: function,
          child: Text(
            title,
            style: CustomTextStyle(
              family: 'Nunito',
              weight: FontWeight.bold,
              size: 16,
              lineHeight: 1.5,
              textColor: CustomColors.primary,
            ),
          ),
          style: ButtonStyle(
            overlayColor:
                MaterialStateColor.resolveWith((states) => Colors.white),
            backgroundColor:
                MaterialStateColor.resolveWith((states) => Colors.white),
            foregroundColor:
                MaterialStateColor.resolveWith((states) => Colors.white),
            side: MaterialStateBorderSide.resolveWith((states) => BorderSide(
                  color: CustomColors.primary,
                  width: 1.5,
                )),
            shape: MaterialStateProperty.resolveWith(
              (states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            elevation: MaterialStateProperty.resolveWith((states) => 0),
          ),
        );
}
