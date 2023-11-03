import 'package:flutter/material.dart';
import 'package:login_task/modules/login_screen/login_screen.dart';
import 'package:login_task/modules/signup_screen/signup_screen.dart';
import 'package:login_task/shared/components/components.dart';
import 'package:login_task/shared/styles/styles.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                const FadeAnimation(
                    1,
                    Text("Welcome",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30))),
                const SizedBox(height: 20),
                FadeAnimation(
                    1.2,
                    Text(
                        "Automatic identity verification which enables you to verify your identity",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Colors.grey[700], fontSize: 15))),
              ],
            ),
            FadeAnimation(
              1.4,
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Illustration.png"),
                  ),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                FadeAnimation(
                  1.5,
                   commonBtn("Login", () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  }, Colors.white),
                ),
                const SizedBox(height: 20),
                FadeAnimation(
                  1.6,
                   commonBtn("Sign up", () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                  }, Colors.yellow),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
