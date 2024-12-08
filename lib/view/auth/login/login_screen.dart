import 'package:cliq_pay/res/components/custom_text_field.dart';
import 'package:cliq_pay/res/components/rounded_button.dart';
import 'package:cliq_pay/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../routes/routes_name.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF548FE1),
                    Color(0xFF1EDED7),
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          title: const Text(
            'Log In',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Gap(40),
                  SizedBox(
                    height: 200,
                    width: 206,
                    child: Image.asset('images/login.png'),
                  ),
                  const TextFieldCustom(
                    prefixIcon: Icons.mail,
                    maxLines: 1,
                    text: '',
                    hintText: 'Enter your email',
                  ),
                  const TextFieldCustom(
                    obscureText: true,
                    prefixIcon: Icons.password,
                    maxLines: 1,
                    text: '',
                    hintText: 'Enter your password',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forget Password?',
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                  const Gap(46),
                  RoundedButton(
                      title: 'Login',
                      onpress: () {},
                      color: AppColor.primaryColor),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don’t have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, RoutesName.signUp);
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                color: AppColor.primaryColor,
                                textBaseline: TextBaseline.ideographic),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
