import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:indoc/start/signup.dart';
import 'package:indoc/utils/app_config.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _num = TextEditingController();

  final formkey = GlobalKey<FormState>();

  Future getOtp() async {
    final isValidForm = formkey.currentState!.validate();
    if (isValidForm) {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
      );

      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+91${_num.text}',
        verificationCompleted: (PhoneAuthCredential credential) {
          showSnackBar("Auth Complete");
        },
        verificationFailed: (FirebaseAuthException e) {
          showSnackBar("Auth field");
        },
        codeSent: (String verificationId, int? resendToken) {
          OtpPage.otpid = verificationId;
          showSnackBar("OTP Send");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const OtpPage()),
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          showSnackBar("time out");
        },
      );
    }
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(message),
      ),
    );
  }

  @override
  void dispose() {
    _num.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Login",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Lottie.asset('assets/icons/helloblue.json', width: 350),
                numTextfiled(_num, "Phone Number"),
                sendOtpButton(() {
                  getOtp();
                }, "Send OTP"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "i don't have an account",
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupPage()),
                          );
                        },
                        child: const Text(
                          'Signup',
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
