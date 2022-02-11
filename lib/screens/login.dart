import 'package:flutter/material.dart';
import 'package:login_app_ui/screens/forgetpassword.dart';
import 'package:login_app_ui/screens/home.dart';
import 'package:login_app_ui/screens/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String routeName = "/loginScreen";

  void loginBtnClick(context) {
    Navigator.pushNamed(context, HomeScreen.routeName);
  }

  void createNewAccountBtnClick(context) {
    Navigator.pushNamed(context, SignupScreen.routeName);
  }

  void forgetBtnClick(context) {
    Navigator.pushNamed(context, ForgetPasswordScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFedf2f4),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 150.0,
                    height: 150.0,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Center(
                  child: Text(
                    "REDBIRD",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36.0,
                      color: Color(0XFF2b2d42),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Container(
                    width: 300,
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: const TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                        label: Text("Username"),
                        prefixIcon: Icon(
                          Icons.account_circle_sharp,
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
                Center(
                  child: Container(
                    width: 300,
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: const SizedBox(
                      width: 300,
                      child: TextField(
                        obscureText: true,
                        autofocus: false,
                        decoration: InputDecoration(
                          label: Text("Password"),
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
                ),
                Center(
                  child: SizedBox(
                    width: 300,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () => loginBtnClick(context),
                      child: const Text(
                        "Login",
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
                ),
                Container(
                  margin: const EdgeInsets.only(left: 215),
                  child: TextButton(
                    onPressed: () => forgetBtnClick(context),
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(
                        color: Color(0xffef233c),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: TextButton(
                    onPressed: () => createNewAccountBtnClick(context),
                    child: const Text(
                      "Create your free account",
                      style: TextStyle(
                        color: Color(0XFF2b2d42),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
