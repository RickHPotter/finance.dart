import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:finance/src/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Welcome!',
                      textStyle: const TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Times New Roman',
                        fontWeight: FontWeight.w500,
                      ),
                      speed: const Duration(
                        milliseconds: 450,
                      )),
                ],
                onTap: () {
                  debugPrint("Welcome back!");
                },
                isRepeatingAnimation: true,
                totalRepeatCount: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                      decoration: const InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: 'Enter Your Username/Email',
                        labelText: 'Email or Username',
                        floatingLabelStyle: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                      decoration: const InputDecoration(
                        icon: Icon(Icons.lock),
                        hintText: 'Enter Your Password',
                        labelText: 'Password',
                        floatingLabelStyle: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      obscureText: true,
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.forgotPasswordRoute);
                      },
                      child: const Text(
                        'Forgot Password?',
                      ),
                    ),
                    TextButton.icon(
                      onPressed: (() {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      }),
                      label: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'Don\'t have an account?',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextButton(
                          onPressed: (() {
                            Navigator.pushNamed(
                              context,
                              MyRoutes.signUpRoute,
                            );
                          }),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
