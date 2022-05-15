import 'package:flutter/material.dart';
import 'package:virgoplace/screens/home/components/feed_item.dart';

import '../../assets/custom_icon.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomImage(
          height: 24,
          image: 'logo',
        ),
        actions: [
          Container(
            alignment: Alignment.center,
            height: 48,
            width: 48,
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffF3F4F8),
              ),
              shape: BoxShape.circle,
            ),
            child: const SizedBox(
              height: 32,
              width: 32,
              child: CustomImage(
                height: 32,
                image: 'wallet',
              ),
            ),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        itemBuilder: (context, index) => FeedItem(
          index: index,
        ),
        separatorBuilder: (context, index) => const Divider(
          color: Color(0xfff3f4f8),
          height: 40,
        ),
        itemCount: 2,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              alignment: Alignment.center,
              height: 48,
              width: 48,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffF3F4F8),
                ),
                shape: BoxShape.circle,
              ),
              child: const SizedBox(
                height: 32,
                width: 32,
                child: CustomImage(
                  height: 32,
                  image: 'home',
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              alignment: Alignment.center,
              height: 48,
              width: 48,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffF3F4F8),
                ),
                shape: BoxShape.circle,
              ),
              child: const SizedBox(
                height: 32,
                width: 32,
                child: CustomImage(
                  height: 32,
                  image: 'search',
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              alignment: Alignment.center,
              height: 48,
              width: 48,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffF3F4F8),
                ),
                shape: BoxShape.circle,
              ),
              child: const SizedBox(
                height: 32,
                width: 32,
                child: CustomImage(
                  height: 32,
                  image: 'add',
                ),
              ),
            ),
          ),
          const BottomNavigationBarItem(
            label: '',
            icon: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.black12,
            ),
          ),
        ],
      ),
    );
  }
}
