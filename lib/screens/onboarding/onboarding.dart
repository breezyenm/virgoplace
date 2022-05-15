import 'package:flutter/material.dart';
import 'package:virgoplace/assets/custom_button.dart';
import 'package:virgoplace/assets/custom_colors.dart';
import 'package:virgoplace/assets/custom_icon.dart';
import 'package:virgoplace/assets/custom_textstyle.dart';
import 'package:virgoplace/assets/gradient_button.dart';
import 'package:virgoplace/assets/gradient_text.dart';
import 'package:virgoplace/screens/onboarding/login.dart';
import 'package:virgoplace/screens/onboarding/register.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomImage(
          height: 24,
          image: 'logo',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  'images/onboarding.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 75,
              ),
              GradientText(
                text: 'Build connections.\nBuild wealth.',
                style: CustomTextStyle(
                  size: 28,
                  // textColor: CustomColors.primary,
                  weight: FontWeight.bold,
                  lineHeight: 1.43,
                ),
                textAlign: TextAlign.center,
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
              const SizedBox(
                height: 20,
              ),
              Text(
                'Vigoplace integrates all of your personal, business and online interaction needs into one simple user-friendly application.',
                style: CustomTextStyle(
                  size: 16,
                  textColor: CustomColors.subText,
                  weight: FontWeight.w400,
                  lineHeight: 1.5,
                  family: 'Nunito',
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              GradientButton(
                title: 'Login',
                function: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const Login()),
                      ));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: CustomButton(
                  title: 'Sign up',
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const Register()),
                        ));
                  },
                ),
              ),
              const SizedBox(
                height: 34,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
