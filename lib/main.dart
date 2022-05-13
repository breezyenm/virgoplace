import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:virgoplace/assets/custom_colors.dart';
import 'package:virgoplace/screens/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Virgoplace',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            iconTheme: IconThemeData(
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        // primarySwatch: CustomColors.primary.,
      ),
      home: const Onboarding(),
    );
  }
}
