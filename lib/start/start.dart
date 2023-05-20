import 'package:flutter/material.dart';
import 'package:indoc/start/login.dart';
import 'package:indoc/start/signup.dart';
import 'package:indoc/config/app_config.dart';
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
              Lottie.asset('assets/logos/welcome-v2.json'),
              // Image.asset(
              //   "assets/logos/indoc.png",
              //   scale: 6,
              // ),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 60,
                width: 300,
                child: FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  style: buttonShape,
                  child: const Text("Login", textScaleFactor: 1.5),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                width: 300,
                child: FilledButton.tonal(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Text("Sign up", textScaleFactor: 1.5),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
