import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iscp_project/screens/login_screen.dart';

import '../widgets/custom_button.dart';
import '../screens/home_screen.dart';
import '../themes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Image.asset(
          //   'assets/images/bg.png',
          //   fit: BoxFit.cover,
          // ),

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

              //NOTE: Username
              SizedBox(height: whiteSpace),
              Text(
                'USERNAME',
                style: whiteTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: whiteSpace),
                child: TextFormField(
                  keyboardType: TextInputType.name,
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

              //NOTE: Email
              const SizedBox(height: 20),
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

              //NOTE: Name
              const SizedBox(height: 20),
              Text(
                'NAMA',
                style: whiteTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: whiteSpace),
                child: TextFormField(
                  keyboardType: TextInputType.name,
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

              //NOTE: Re-password
              const SizedBox(height: 20),
              Text(
                'RE-PASSWORD',
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

              //NOTE: Register button
              CustomButton(
                press: () {},
                name: 'REGISTER',
                width: MediaQuery.of(context).size.width * 0.65,
              ),

              //NOTE: Login button
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: greyTextStyle.copyWith(fontSize: 10),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () => Get.off(() => const LoginScreen()),
                    child: Text(
                      'Login',
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
