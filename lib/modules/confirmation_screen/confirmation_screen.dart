import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_task/modules/login_screen/login_screen.dart';
import 'package:login_task/shared/components/components.dart';
import 'package:login_task/shared/styles/styles.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeAnimation(
              1.4,
              Column(
                children: [
                  SvgPicture.asset("assets/images/confirmation.svg"),
                  FadeAnimation(
                    1.6,
                    commonBtn("Done", () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    }, Colors.greenAccent),
                  ),
                ],
                ),
              ),
              ]
            ),
        ),
    );
  }
}
