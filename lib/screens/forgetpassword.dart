import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);
  static String routeName = "/forgetpasswordScreen";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0XFFedf2f4),
      body: Center(
        child: Text("Forget Password Screen"),
      ),
    );
  }
}
