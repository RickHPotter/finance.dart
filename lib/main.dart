import 'package:flutter/material.dart';

import 'package:finance/src/screens/home_screen/index.dart';
import 'package:finance/src/screens/sessions/login.dart';
import 'package:finance/src/screens/sessions/sign_up.dart';
import 'package:finance/src/screens/sessions/forgot_password.dart';
import 'package:finance/src/utils/routes.dart';
import "package:finance/src/themes/theme.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Finance',
        theme: myTheme,
        themeMode: ThemeMode.dark,
        initialRoute: '/',
        routes: {
          MyRoutes.homeRoute: (context) => const Home(),
          MyRoutes.loginRoute: (context) => const Login(),
          MyRoutes.signUpRoute: (context) => const SignUp(),
          MyRoutes.forgotPasswordRoute: (context) => const ForgotPassword(),
        });
  }
}
