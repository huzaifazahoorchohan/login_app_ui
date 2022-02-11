import 'package:flutter/material.dart';
import 'package:login_app_ui/screens/forgetpassword.dart';
import 'package:login_app_ui/screens/home.dart';
import 'package:login_app_ui/screens/login.dart';
import 'package:login_app_ui/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login System",
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        SignupScreen.routeName: (context) => const SignupScreen(),
        ForgetPasswordScreen.routeName: (context) =>
            const ForgetPasswordScreen(),
      },
    );
  }
}
