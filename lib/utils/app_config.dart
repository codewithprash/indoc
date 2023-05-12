import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:indoc/main.dart';

Widget buildButton(onPressed, buttonName, iconName, iconColor) =>
    ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(
        iconName,
        color: iconColor,
      ),
      style: ElevatedButton.styleFrom(
        alignment: Alignment.centerLeft,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      label: Text(
        buttonName,
      ),
    );

Widget normalButton(onPressed, buttonName) => ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Text(
        buttonName,
      ),
    );

Widget sendOtpButton(onPressed, buttonName) => SizedBox(
      height: 50,
      width: 300,
      child: FilledButton(
        onPressed: onPressed,
        style: roundButton,
        child: Text(buttonName),
      ),
    );

var roundButton = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
);

Widget numTextfiled(controller, String? hintText) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: TextFormField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(),
              borderRadius: BorderRadius.circular(12),
            ),
            prefixIcon: const Icon(
              Icons.phone,
            ),
            hintText: hintText,
            filled: true),
        maxLength: 10,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
        controller: controller,
        validator: (value) {
          if (value != null && value.length < 10) {
            return 'Enter a valid Phone number';
          } else {
            return null;
          }
        },
      ),
    );

Widget otpTextfiled(controller, String? hintText) => TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(),
            borderRadius: BorderRadius.circular(12),
          ),
          prefixIcon: const Icon(
            Icons.numbers_rounded,
          ),
          hintText: hintText,
          filled: true),
      maxLength: 6,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      controller: controller,
      validator: (value) {
        if (value != null && value.length < 6) {
          return 'Enter Currect OTP';
        } else {
          return null;
        }
      },
    );

class OtpPage extends StatefulWidget {
  static String otpid = "";
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final TextEditingController _otp = TextEditingController();

  final otpkey = GlobalKey<FormState>();

  Future doneOtp() async {
    final isValidForm = otpkey.currentState!.validate();
    if (isValidForm) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
      );

      await FirebaseAuth.instance
          .signInWithCredential(
        PhoneAuthProvider.credential(
          verificationId: OtpPage.otpid,
          smsCode: _otp.text,
        ),
      )
          .whenComplete(() {
        navigatorkey.currentState!.popUntil((route) => route.isFirst);
      });

      // navigatorkey.currentState!.popUntil((route) => route.isFirst);
    }
  }

  @override
  void dispose() {
    _otp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: otpkey,
        child: AlertDialog(
          title: const Text('Enter OTP'),
          content: otpTextfiled(_otp, "******"),
          actions: <Widget>[
            TextButton(
              child: const Text('Exit'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              onPressed: () {
                doneOtp();
              },
              child: const Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}
