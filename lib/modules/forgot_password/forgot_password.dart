import 'package:flutter/material.dart';
import 'package:login_task/modules/verify_otp/verify_otp.dart';
import 'package:login_task/shared/components/components.dart';
import 'package:login_task/shared/styles/styles.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
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
                      Text("Forgot Password",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  const SizedBox(height: 20),
                  FadeAnimation(
                      1.2,
                      Text("Follow this steps to reset it.",
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey[700]))),
                ],
              ),
              Column(
                children: [
                  FadeAnimation(
                      1.2,
                      inputField(label: "Email", textAlign: TextAlign.start)),
                  const SizedBox(height: 30),
                  FadeAnimation(
                      1.3,
                      inputField(
                          label: "Phone Number",
                          textInputTypes: TextInputType.phone,
                          textAlign: TextAlign.start)),
                  const SizedBox(height: 30),
                ],
              ),
              Column(children: [
                FadeAnimation(
                    1.5,
                    commonBtn("Verify", () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerifyOTP()));
                    }, Colors.green)),
              ]),
            ]),
      ),
    );
  }
}
