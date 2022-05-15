import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virgoplace/assets/custom_colors.dart';
import 'package:virgoplace/assets/custom_icon.dart';
import 'package:virgoplace/assets/custom_textfield.dart';
import 'package:virgoplace/assets/custom_textstyle.dart';
import 'package:virgoplace/providers/api/auth.dart';
import 'package:virgoplace/providers/data/auth_provider.dart';
import 'package:virgoplace/screens/onboarding/login.dart';

import '../../assets/gradient_button.dart';
import '../home/home.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isChecked = false;
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
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sign up to gain access',
                    style: CustomTextStyle(
                      textColor: CustomColors.primary,
                      weight: FontWeight.bold,
                      size: 19,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      children: [
                        CustomTextField(
                          controller: authProvider.fullNameController,
                          hint: 'Full name',
                          icon: 'user',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          controller: authProvider.usernameController,
                          hint: 'Username',
                          icon: 'user',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          controller: authProvider.emailController,
                          hint: 'Email address',
                          icon: 'envelope',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          controller: authProvider.dobController,
                          hint: 'Date of birth',
                          icon: 'calendar',
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
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          controller: authProvider.confirmPasswordController,
                          hint: 'Confirm Password',
                          icon: 'lock',
                          obscure: true,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                          title: RichText(
                            text: TextSpan(
                              children: [
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
                                    weight: FontWeight.bold,
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
                                    weight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GradientButton(
                    title: authProvider.loading ? 'loading' : 'Sign up',
                    function: () async {
                      if (_formKey.currentState!.validate() && isChecked) {
                        await api.register(
                          context: context,
                        );
                      }
                    },
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // Text(
                  //   'OR LOGIN WITH',
                  //   style: CustomTextStyle(
                  //     family: 'Nunito',
                  //     size: 11,
                  //     weight: FontWeight.w600,
                  //   ),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already have an account? ',
                            style: CustomTextStyle(
                              family: 'Nunito',
                            ),
                          ),
                          TextSpan(
                            text: 'Login',
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
