import 'package:flutter/material.dart';
import 'package:virgoplace/assets/custom_icon.dart';
import 'package:virgoplace/assets/custom_textstyle.dart';

class FeedActions extends StatelessWidget {
  const FeedActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const CustomImage(
          height: 24,
          image: 'comment',
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          '2.5k',
          style: CustomTextStyle(
            family: 'Nunito',
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const CustomImage(
          height: 24,
          image: 'like',
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          '250',
          style: CustomTextStyle(
            family: 'Nunito',
          ),
        ),
      ],
    );
  }
}
