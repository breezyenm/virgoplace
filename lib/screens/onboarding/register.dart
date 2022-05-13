import 'package:flutter/material.dart';
import 'package:virgoplace/assets/custom_colors.dart';
import 'package:virgoplace/assets/custom_icon.dart';
import 'package:virgoplace/assets/custom_textfield.dart';
import 'package:virgoplace/assets/custom_textstyle.dart';

import '../../assets/gradient_button.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
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
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sign up to gain access',
                style: CustomTextStyle(
                  textColor: CustomColors.primary,
                  weight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                hint: 'Full name',
                icon: 'user',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hint: 'Username',
                icon: 'user',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hint: 'Email address',
                icon: 'envelope',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hint: 'Date of birth',
                icon: 'calendar',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hint: 'Password',
                icon: 'lock',
                obscure: true,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hint: 'Confirm Password',
                icon: 'lock',
                obscure: true,
              ),
              const SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
                title: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'I agree to the ',
                      style: CustomTextStyle(
                        family: 'Nunito',
                      ),
                    ),
                    TextSpan(
                      text: 'Terms of Service',
                      style: CustomTextStyle(
                        family: 'Nunito',
                        textColor: CustomColors.primary,
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: CustomTextStyle(
                        family: 'Nunito',
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy Policy.',
                      style: CustomTextStyle(
                        family: 'Nunito',
                        textColor: CustomColors.primary,
                      ),
                    ),
                  ]),
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              SizedBox(
                height: 20,
              ),
              GradientButton(
                title: 'Sign up',
                // function: () {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: ((context) => const Login()),
                //       ));
                // },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'OR LOGIN WITH',
                style: CustomTextStyle(
                  family: 'Nunito',
                  size: 11,
                  weight: FontWeight.w600,
                ),
              ),
              Spacer(),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Have an account already? ',
                      style: CustomTextStyle(
                        family: 'Nunito',
                      ),
                    ),
                    TextSpan(
                      text: 'Login',
                      style: CustomTextStyle(
                        family: 'Nunito',
                        textColor: CustomColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
