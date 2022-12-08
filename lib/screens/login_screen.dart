import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_button.dart';
import '../screens/register_screen.dart';
import '../screens/profile_setting_screen.dart';
import '../themes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
          ),

          //NOTE: Data dan field login
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(
                flex: 12,
              ),
              Text(
                'WELCOME TO PASTE.LAB',
                style: whiteTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'PASTE LOGIN',
                style: whiteTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: light,
                ),
              ),

              //NOTE: Email
              SizedBox(height: whiteSpace),
              Text(
                'EMAIL',
                style: whiteTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: whiteSpace),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    fillColor: kSecondaryColor,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(whiteSpace),
                    ),
                  ),
                ),
              ),

              //NOTE: Password
              const SizedBox(height: 20),
              Text(
                'PASSWORD',
                style: whiteTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: whiteSpace),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    fillColor: kSecondaryColor,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(whiteSpace),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: whiteSpace),

              //NOTE: Login button
              CustomButton(
                press: () => Get.offAll(() => const ProfileSettingScreen()),
                name: 'LOGIN',
                width: MediaQuery.of(context).size.width * 0.65,
              ),

              //NOTE: Register button
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\’t have an account?',
                    style: greyTextStyle.copyWith(fontSize: 10),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () => Get.to(() => const RegisterScreen()),
                    child: Text(
                      'Register',
                      style: whiteTextStyle.copyWith(fontSize: 10),
                    ),
                  ),
                ],
              ),
              SizedBox(height: whiteSpace),
            ],
          )
        ],
      ),
    );
  }
}
