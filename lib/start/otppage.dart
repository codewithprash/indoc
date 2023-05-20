import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:indoc/main.dart';
import 'package:indoc/config/app_config.dart';
import 'package:lottie/lottie.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  static String otpid = "";

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController _otp = TextEditingController();

  Future checkOtp() async {
    if (!formkey.currentState!.validate()) return;

    lodingIndicator(context);

    try {
      await FirebaseAuth.instance.signInWithCredential(
        PhoneAuthProvider.credential(
          verificationId: OtpPage.otpid,
          smsCode: _otp.text,
        ),
      );
      navigatorkey.currentState!.popUntil((route) => route.isFirst);
    } catch (error) {
      Navigator.pop(context);
      showSnackBar(context, "Wrong OTP", Colors.red);
    }
    // navigatorkey.currentState!.popUntil((route) => route.isFirst);
  }

  @override
  void dispose() {
    _otp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP verification'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LottieBuilder.asset(
                  "assets/logos/otp.json",
                  width: 350,
                ),
                otpTextfiled(_otp, "Enter OTP"),
                sendOtpButton(() {
                  checkOtp();
                }, 'Verify'),
                TextButton(onPressed: () {}, child: const Text('Resend OTP')),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
