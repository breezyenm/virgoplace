import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virgoplace/assets/custom_colors.dart';
import 'package:virgoplace/assets/custom_icon.dart';
import 'package:virgoplace/assets/custom_textfield.dart';
import 'package:virgoplace/assets/custom_textstyle.dart';
import 'package:virgoplace/screens/home/home.dart';
import 'package:virgoplace/screens/onboarding/register.dart';

import '../../assets/gradient_button.dart';
import '../../providers/api/auth.dart';
import '../../providers/data/auth_provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // bool isChecked = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Consumer2<AuthProvider, AuthAPI>(
        builder: (context, authProvider, api, chi9ld) {
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
              vertical: 10,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Login to continue',
                    style: CustomTextStyle(
                      textColor: CustomColors.primary,
                      weight: FontWeight.bold,
                      size: 19,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    controller: authProvider.usernameController,
                    hint: 'Username or email address',
                    icon: 'user',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    controller: authProvider.passwordController,
                    hint: 'Password',
                    icon: 'lock',
                    obscure: true,
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: CheckboxListTile(
                  //         contentPadding: EdgeInsets.zero,
                  //         visualDensity: VisualDensity.compact,
                  //         value: isChecked,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             isChecked = !isChecked;
                  //           });
                  //         },
                  //         title: Text(
                  //           'Remember me',
                  //           style: CustomTextStyle(),
                  //         ),
                  //         controlAffinity: ListTileControlAffinity.leading,
                  //       ),
                  //     ),
                  //     const SizedBox(
                  //       width: 20,
                  //     ),
                  //     Text(
                  //       'Forgot password?',
                  //       style: CustomTextStyle(
                  //         family: 'Nunito',
                  //         weight: FontWeight.bold,
                  //       ),
                  //     )
                  //   ],
                  // ),
                  const SizedBox(
                    height: 30,
                  ),
                  GradientButton(
                    title: authProvider.loading ? 'loading' : 'Login',
                    function: () async {
                      if (_formKey.currentState!.validate()) {
                        await api.login(
                          context: context,
                        );
                      }
                    },
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Register(),
                        ),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don’t have an account yet? ",
                            style: CustomTextStyle(
                              family: 'Nunito',
                            ),
                          ),
                          TextSpan(
                            text: 'Sign up',
                            style: CustomTextStyle(
                              family: 'Nunito',
                              textColor: CustomColors.primary,
                              weight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
