import 'package:flutter/material.dart';
import 'package:virgoplace/assets/custom_colors.dart';
import 'package:virgoplace/assets/custom_icon.dart';
import 'package:virgoplace/assets/custom_textstyle.dart';

class CustomTextField extends TextFormField {
  final String icon;
  final String hint;
  final bool obscure;
  final TextEditingController controller;
  CustomTextField(
      {Key? key,
      required this.hint,
      required this.icon,
      this.obscure = false,
      required this.controller})
      : super(
            key: key,
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffd1d2d8),
                ),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: CustomColors.primary,
                ),
              ),
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
              labelText: hint,
              labelStyle: CustomTextStyle(
                textColor: const Color(0xff8e8f99),
                size: 14,
                family: 'Nunito',
                weight: FontWeight.w400,
              ),
              floatingLabelAlignment: FloatingLabelAlignment.start,
            ),
            style: CustomTextStyle(
              textColor: CustomColors.text,
              size: 14,
              family: 'Nunito',
              weight: FontWeight.w400,
            ),
            validator: (value) {
              if ((value ?? '').isEmpty) {
                return 'Field is required';
              }
              return null;
            });
}
