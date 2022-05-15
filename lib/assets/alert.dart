import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'custom_colors.dart';
import 'custom_textstyle.dart';

Future alert({required BuildContext context, required String content}) async {
  if (Platform.isAndroid) {
    await showDialog(
      // barrierColor: CustomColors.text.withOpacity(0.48),
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Okay',
                style: CustomTextStyle(
                  textColor: CustomColors.primary,
                ),
              ),
            ),
          ],
          content: Text(
            content,
            style: CustomTextStyle(
              textColor: CustomColors.text,
            ),
          ),
          title: Text(
            'Message',
            style: CustomTextStyle(
              textColor: CustomColors.text,
            ),
          ),
        );
      },
    );
  }
  if (Platform.isIOS) {
    await showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          actions: [
            CupertinoDialogAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Okay'),
            ),
          ],
          content: Text(content),
          title: const Text('Message'),
        );
      },
    );
  }
}
