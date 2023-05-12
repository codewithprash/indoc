import 'package:flutter/material.dart';
import 'package:indoc/start/login.dart';
import 'package:indoc/start/signup.dart';
import 'package:indoc/utils/app_config.dart';
import 'package:lottie/lottie.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Lottie.asset('assets/icons/welcome-v2.json'),
              Image.asset(
                "assets/logos/indoc.png",
                scale: 6,
              ),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  style: roundButton,
                  child: const Text("Login"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: FilledButton.tonal(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupPage()),
                    );
                  },
                  style: roundButton,
                  child: const Text("Sign up"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
