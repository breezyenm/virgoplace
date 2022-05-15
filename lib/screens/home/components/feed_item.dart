import 'package:flutter/material.dart';
import 'package:virgoplace/assets/custom_icon.dart';
import 'package:virgoplace/assets/custom_textstyle.dart';
import 'package:virgoplace/screens/home/components/feed_actions.dart';
import 'package:virgoplace/screens/home/components/feed_user.dart';

class FeedItem extends StatelessWidget {
  final int index;
  const FeedItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: const [
                  FeedUser(),
                  Spacer(),
                  IconButton(
                    onPressed: null,
                    icon: CustomImage(
                      height: 24,
                      image: 'more',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Color(0xfff3f4f8),
                height: 0,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Feugiat tristique in morbi nunc enim vitae. Gravida facilisis sit lobortis eget. Lorem faucibus vulputate purus viverra eu elit nec nisl.',
                style: CustomTextStyle(
                  family: 'Nunito',
                  lineHeight: 1.43,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Image.asset(
          'images/home $index.png',
          fit: BoxFit.cover,
          width: screen.width,
          height: screen.width,
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: FeedActions(),
        ),
      ],
    );
  }
}
