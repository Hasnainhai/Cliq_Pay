import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:cliq_pay/res/components/custom_text_field.dart';
import 'package:cliq_pay/res/components/rounded_button.dart';
import 'package:cliq_pay/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../routes/routes_name.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      _showMessage('Please fill in all fields');
    } else if (email == 'test@example.com' && password == 'password123') {
      _showMessage('Login Successful');
      Navigator.pushNamed(context, RoutesName.homeScreen);
    } else {
      _showMessage('Invalid email or password');
    }
  }

  void _showMessage(String message) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        message: message,
        borderRadius: BorderRadius.circular(0.0),
        titleSize: 20.0,
        padding: const EdgeInsets.all(16.0),
        positionOffset: 20,
        duration: const Duration(seconds: 2),
        backgroundColor: AppColor.primaryColor,
        flushbarPosition: FlushbarPosition.TOP,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
          size: 30.0,
        ),
      )..show(context),
    );
  }

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
                  TextFieldCustom(
                    prefixIcon: Icons.mail,
                    controller: _emailController,
                    maxLines: 1,
                    text: '',
                    hintText: 'Enter your email',
                  ),
                  TextFieldCustom(
                    obscureText: true,
                    prefixIcon: Icons.password,
                    controller: _passwordController,
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
                      onpress: _handleLogin,
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
