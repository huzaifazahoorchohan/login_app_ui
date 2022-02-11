import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);
  static String routeName = "/signupScreen";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0XFFedf2f4),
      body: Center(
        child: Text("Signup Screen"),
      ),
    );
  }
}
