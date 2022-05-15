import 'package:flutter/material.dart';
import 'package:virgoplace/assets/custom_textstyle.dart';

class FeedUser extends StatelessWidget {
  const FeedUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const CircleAvatar(
          radius: 20,
          backgroundColor: Colors.black12,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'robertfox',
              style: CustomTextStyle(
                family: 'Nunito',
              ),
            ),
            Text(
              '3 hours ago',
              style: CustomTextStyle(
                family: 'Nunito',
                textColor: const Color(0xff8e8f99),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
