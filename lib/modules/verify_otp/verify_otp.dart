import 'package:flutter/material.dart';
import 'package:login_task/modules/confirmation_screen/confirmation_screen.dart';
import 'package:login_task/shared/components/components.dart';
import 'package:login_task/shared/styles/styles.dart';

class VerifyOTP extends StatelessWidget {
  const VerifyOTP({super.key});

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
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                const FadeAnimation(
                    1,
                    Text("Receive OTP",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold))),
                const SizedBox(height: 20),
                FadeAnimation(
                    1.2,
                    Text("We send otp number to you, copy it here",
                        style: TextStyle(
                            fontSize: 15, color: Colors.grey[700]))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: FadeAnimation(
                        1.2, inputField(label: "",length:  1, textAlign: TextAlign.center))
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: FadeAnimation(
                      1.3, inputField(label: "",length: 1, textAlign: TextAlign.center)),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: FadeAnimation(
                      1.4,
                      inputField(label: "",length: 1, textAlign: TextAlign.center)),
                ),
                const SizedBox(width: 5),
                Expanded(
                 child: FadeAnimation(
                    1.5, inputField(label: "",length: 1, textAlign: TextAlign.center)),
                 ),
                const SizedBox(width: 5),
                Expanded(
                  child: FadeAnimation(
                    1.6, inputField(label: "",length: 1, textAlign: TextAlign.center)),
                  ),
                const SizedBox(width: 5),
                Expanded(
                  child: FadeAnimation(
                      1.7,
                    inputField(label: "",length: 1, textAlign: TextAlign.center)),
                  ),
              ],
            ),
            Column(
              children: [
                FadeAnimation(
                  1.6,
                  commonBtn("Done", () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfirmationScreen()));
                  }, Colors.yellow),
                ),
                FadeAnimation(
                  1.6,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Resend Code 02:00",
                          style: TextStyle(color: Colors.grey[400])),
                      TextButton(
                          style: ButtonStyle(
                              overlayColor: MaterialStatePropertyAll(
                                  Colors.green.withOpacity(0.3))),
                          onPressed: () {
                          },
                          child: const Text("Resend",
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
    );
  }
}
