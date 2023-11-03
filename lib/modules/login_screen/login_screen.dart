import 'package:flutter/material.dart';
import 'package:login_task/modules/forgot_password/forgot_password.dart';
import 'package:login_task/modules/signup_screen/signup_screen.dart';
import 'package:login_task/shared/components/components.dart';
import 'package:login_task/shared/styles/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, size: 20, color: Colors.black),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const FadeAnimation(
                          1,
                          Text("Login",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold))),
                      const SizedBox(height: 20),
                      FadeAnimation(
                          1.2,
                          Text("Login to your account",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[700]))),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        FadeAnimation(
                            1.2,
                            inputField(
                                label: "Email", textAlign: TextAlign.start)),
                        const SizedBox(height: 30),
                        FadeAnimation(1.3,
                            inputField(label: "Password", obscureText: true, textAlign: TextAlign.start)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: FadeAnimation(
                      1.3,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("Forgot Password ?",
                              style: TextStyle(color: Colors.grey[400])),
                          TextButton(
                              style: ButtonStyle(
                                  overlayColor: MaterialStatePropertyAll(
                                      Colors.green.withOpacity(0.3))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgotPassword()));
                              },
                              child: const Text("Reset",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.black))),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: FadeAnimation(
                        1.4, commonBtn("Login", () {}, Colors.green)),
                  ),
                  FadeAnimation(
                    1.5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account?",
                            style: TextStyle(color: Colors.grey[400])),
                        TextButton(
                            style: ButtonStyle(
                                overlayColor: MaterialStatePropertyAll(
                                    Colors.green.withOpacity(0.3))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignupScreen()));
                            },
                            child: const Text("Sign up",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black))),
                      ],
                    ),
                  )
                ],
              ),
            ),
            FadeAnimation(
              1.2,
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/background.png"),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
