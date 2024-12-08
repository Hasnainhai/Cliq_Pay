import 'package:cliq_pay/res/components/rounded_button.dart';
import 'package:cliq_pay/res/components/unfill_rounded_button.dart';
import 'package:cliq_pay/routes/routes_name.dart';
import 'package:cliq_pay/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: SizedBox(
            height: 63, width: 191, child: Image.asset('images/logo.png')),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(60),
              SizedBox(
                height: 238,
                width: 279,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/cards.png'),
                ),
              ),
              const Gap(16),
              const Text(
                'Your Money, Your Control,\nYour Way ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              const Gap(8),
              const Text(
                'Seamlessly manage your finances with confidence and ease.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              const Gap(8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 6,
                    backgroundColor: AppColor.primaryColor,
                  ),
                  Gap(8),
                  CircleAvatar(
                    radius: 6,
                    backgroundColor: AppColor.grayColor,
                  ),
                  Gap(8),
                  CircleAvatar(
                    radius: 6,
                    backgroundColor: AppColor.grayColor,
                  ),
                ],
              ),
              const Gap(24),
              RoundedButton(
                title: 'Log In',
                onpress: () {
                  Navigator.pushNamed(context, RoutesName.login);
                },
                color: AppColor.primaryColor,
              ),
              const Gap(16),
              RoundedButton2(
                title: 'Sign Up',
                onpress: () {
                  Navigator.pushNamed(context, RoutesName.signUp);
                },
                color: AppColor.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
