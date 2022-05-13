import 'package:flutter/material.dart';
import 'package:virgoplace/assets/custom_colors.dart';
import 'package:virgoplace/assets/custom_icon.dart';
import 'package:virgoplace/assets/custom_textstyle.dart';

class CustomTextField extends TextFormField {
  final String icon;
  final String hint;
  final bool obscure;
  CustomTextField(
      {Key? key, required this.hint, required this.icon, this.obscure = false})
      : super(
          key: key,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: Color(0xffd1d2d8),
            )),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: CustomColors.primary,
            )),
            fillColor: const Color(0xfff3f4f8),
            filled: true,
            contentPadding: const EdgeInsets.all(16),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: CustomImage(
                height: 24,
                image: icon,
              ),
            ),
            prefixIconConstraints: const BoxConstraints(
              maxHeight: 24,
              maxWidth: 56,
            ),
            suffixIcon: obscure
                ? const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: CustomImage(
                      height: 24,
                      image: 'obscure',
                    ),
                  )
                : null,
            suffixIconConstraints: obscure
                ? const BoxConstraints(
                    maxHeight: 24,
                    maxWidth: 56,
                  )
                : null,
            hintText: hint,
            hintStyle: CustomTextStyle(
              textColor: const Color(0xff8e8f99),
              size: 14,
              family: 'Nunito',
              weight: FontWeight.w400,
            ),
          ),
        );
}
