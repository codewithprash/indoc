import 'package:flutter/material.dart';
import 'package:indoc/start/login.dart';
import 'package:indoc/config/app_config.dart';
import 'package:lottie/lottie.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formkey = GlobalKey<FormState>();

  final TextEditingController _num = TextEditingController();

  // Future getOtp() async {
  //   if (!formkey.currentState!.validate()) return;
  //   // showDialog(
  //   //   context: context,
  //   //   barrierColor: Colors.black45,
  //   //   barrierDismissible: true,
  //   //   builder: (context) => const Center(
  //   //     child: CircularProgressIndicator(),
  //   //   ),
  //   // );
  //   lodingIndicator(context);

  //   await FirebaseAuth.instance.verifyPhoneNumber(
  //     phoneNumber: '+91${_num.text}',
  //     verificationCompleted: (PhoneAuthCredential credential) {
  //       showSnackBar(context, "Auth Complete", Colors.green);
  //     },
  //     verificationFailed: (FirebaseAuthException e) {
  //       showSnackBar(context, "Auth field", Colors.red);
  //     },
  //     codeSent: (String verificationId, int? resendToken) {
  //       OtpPage.otpid = verificationId;
  //       showSnackBar(context, "OTP Send", Colors.green);
  //       Navigator.pop(context);
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(builder: (context) => const OtpPage()),
  //       );
  //     },
  //     codeAutoRetrievalTimeout: (String verificationId) {
  //       showSnackBar(context, "time out", Colors.red);
  //     },
  //   );
  // }

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
          "Sign up",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Lottie.asset(
                  'assets/logos/helloblue.json',
                  width: 350,
                ),
                numTextfiled(_num, "Phone Number"),
                sendOtpButton(() {
                  getOtp(context, formkey, _num.text);
                }, "Get OTP"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "i already have an account",
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: const Text(
                          'Login',
                        )),
                    const SizedBox(
                      height: 50,
                    ),
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
