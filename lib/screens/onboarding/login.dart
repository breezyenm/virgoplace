import 'package:flutter/material.dart';
import 'package:virgoplace/assets/custom_colors.dart';
import 'package:virgoplace/assets/custom_icon.dart';
import 'package:virgoplace/assets/custom_textfield.dart';
import 'package:virgoplace/assets/custom_textstyle.dart';

import '../../assets/gradient_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = true;
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
                'Login to continue',
                style: CustomTextStyle(
                  textColor: CustomColors.primary,
                  weight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                hint: 'Username or email address',
                icon: 'user',
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
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                      title: Text(
                        'Remember me',
                        style: CustomTextStyle(),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Forgot password?',
                    style: CustomTextStyle(
                      family: 'Nunito',
                      weight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GradientButton(
                title: 'Login',
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
                      text: 'Don’t have an account yet? ',
                      style: CustomTextStyle(
                        family: 'Nunito',
                      ),
                    ),
                    TextSpan(
                      text: 'Sign up',
                      style: CustomTextStyle(
                        family: 'Nunito',
                        textColor: CustomColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 64,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
