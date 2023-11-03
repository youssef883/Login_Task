import 'package:flutter/material.dart';
import 'package:login_task/modules/welcome_screen/welcome_screen.dart';

void main() {
  runApp(const LoginTask());
}

class LoginTask extends StatelessWidget {
  const LoginTask({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}