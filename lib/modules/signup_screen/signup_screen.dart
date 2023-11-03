import 'package:flutter/material.dart';
import 'package:login_task/modules/login_screen/login_screen.dart';
import 'package:login_task/shared/components/components.dart';
import 'package:login_task/shared/styles/styles.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const FadeAnimation(
                      1,
                      Text("Sign up",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  const SizedBox(height: 20),
                  FadeAnimation(
                      1.2,
                      Text("Create an account, it's free",
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey[700]))),
                ],
              ),
              Column(
                children: [
                  FadeAnimation(1.2, inputField(label: "Email", textAlign: TextAlign.start)),
                  const SizedBox(height: 30),
                  FadeAnimation(
                      1.3, inputField(label: "Password", obscureText: true, textAlign: TextAlign.start)),
                  const SizedBox(height: 30),
                  FadeAnimation(1.4,
                      inputField(label: "Confirm Password", obscureText: true, textAlign: TextAlign.start)),
                  const SizedBox(height: 30),
                ],
              ),
              Column(
                children: [
                  FadeAnimation(1.5, commonBtn("Sign up", () {}, Colors.greenAccent)),
                  FadeAnimation(
                    1.6,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Already have an account?",
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
                                          const LoginScreen()));
                            },
                            child: const Text("Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.black))),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
