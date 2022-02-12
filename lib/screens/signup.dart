import 'package:flutter/material.dart';
import 'package:login_app_ui/screens/login.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);
  static String routeName = "/signupScreen";

  void signupbtn(context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  void loginbtn(context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFedf2f4),
      body: SingleChildScrollView(
        child: Center(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: 50.0,
                    height: 50.0,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "REDBIRD",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: Color(0XFF2b2d42),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "Create your free account",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22.0,
                      color: Color(0XFF2b2d42),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: 300,
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: const TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                        label: Text("Enter your email"),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Color(0XFF2b2d42),
                          size: 28.0,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0XFF2b2d42),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: const SizedBox(
                      width: 300,
                      child: TextField(
                        obscureText: true,
                        autofocus: false,
                        decoration: InputDecoration(
                          label: Text("Enter your password"),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0XFF2b2d42),
                            size: 28.0,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0XFF2b2d42),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: const SizedBox(
                      width: 300,
                      child: TextField(
                        obscureText: true,
                        autofocus: false,
                        decoration: InputDecoration(
                          label: Text("Confirm your password?"),
                          prefixIcon: Icon(
                            Icons.verified,
                            color: Color(0XFF2b2d42),
                            size: 28.0,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0XFF2b2d42),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () => signupbtn(context),
                      child: const Text(
                        "Signup",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0XFF2b2d42),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextButton(
                    onPressed: () => loginbtn(context),
                    child: const Text(
                      "Login to your account",
                      style: TextStyle(
                        color: Color(0XFF2b2d42),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
