import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:indoc/main.dart';
import 'package:indoc/start/otppage.dart';

var buttonShape = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
);
//
// buttons
// buttons
//

//1

Widget buildButton(
  void Function() onPressed,
  String buttonName,
  IconData iconName,
  Color iconColor,
) =>
    ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(
        iconName,

        // weight: 2,
        color: iconColor,
      ),
      style: ElevatedButton.styleFrom(
        alignment: Alignment.centerLeft,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      label: Text(
        buttonName,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );

//2

Widget sendOtpButton(
  onPressed,
  String buttonName,
) =>
    Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 60,
        width: 300,
        child: FilledButton(
          onPressed: onPressed,
          style: buttonShape,
          child: Text(
            buttonName,
            textScaleFactor: 1.5,
          ),
        ),
      ),
    );

//
// UI parts
// UI parts
//

//1

void showSnackBar(
  context,
  String message,
  Color color,
) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: Text(message),
    ),
  );
}

// 2

Future lodingIndicator(context) => showDialog(
      context: context,
      barrierColor: Colors.black45,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
//
//
// functions
// functions
//
//

// 1

Future logOutUser() async {
  await FirebaseAuth.instance.signOut();
  navigatorkey.currentState!.popUntil((route) => route.isFirst);
}

//2

Future getOtp(context, formkey, String number) async {
  if (!formkey.currentState!.validate()) return;

  FocusScope.of(context).unfocus();
  lodingIndicator(context);

  await FirebaseAuth.instance.verifyPhoneNumber(
    phoneNumber: '+91$number',
    verificationCompleted: (PhoneAuthCredential credential) {
      showSnackBar(context, "Auth Complete", Colors.green);
    },
    verificationFailed: (FirebaseAuthException e) {
      // showSnackBar(context, "Auth field");
      Navigator.pop(context);
      showSnackBar(context, e.message.toString(), Colors.red);
    },
    codeSent: (String verificationId, int? resendToken) {
      OtpPage.otpid = verificationId;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OtpPage()),
      );
      showSnackBar(context, "OTP Send", Colors.green);
    },
    codeAutoRetrievalTimeout: (String verificationId) {
      Navigator.pop(context);
      showSnackBar(context, "time out", Colors.red);
    },
  );
}
//
//
// widget
// widget
//
//

//1

Widget numTextfiled(controller, String? hintText) => Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: 300,
        child: TextFormField(
          style: const TextStyle(fontWeight: FontWeight.bold),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
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
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.send,
          controller: controller,
          validator: (value) {
            if (value != null && value.length < 10) {
              return 'Enter a valid Phone number';
            } else {
              return null;
            }
          },
        ),
      ),
    );

//2

Widget otpTextfiled(controller, String? hintText) => Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: 200,
        child: TextFormField(
          style: const TextStyle(fontWeight: FontWeight.bold),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
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
                Icons.onetwothree_rounded,
              ),
              hintText: hintText,
              filled: true),
          maxLength: 6,
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.send,
          controller: controller,
          validator: (value) {
            if (value != null && value.length < 6) {
              return 'Enter Currect OTP';
            } else {
              return null;
            }
          },
        ),
      ),
    );

// Widget otp(controller) => TextFormField(
//       style: const TextStyle(fontWeight: FontWeight.bold),
//       decoration: InputDecoration(
//           enabledBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: Colors.white),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           errorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(
//               color: Colors.red,
//             ),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           focusedErrorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(
//               color: Colors.red,
//             ),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: const BorderSide(),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           hintText: "0",
//           filled: true),
//       maxLength: 1,
//       textAlign: TextAlign.center,
//       keyboardType: TextInputType.phone,
//       textInputAction: TextInputAction.next,
//       controller: controller,
//       validator: (value) {
//         if (value != null && value.length <= 1) {
//           return 'Enter Currect OTP';
//         } else {
//           return null;
//         }
//       },
//     );

// Widget otpfiled(controller, String? hintText) => SizedBox(
//       width: 300,
//       height: 70,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Expanded(child: otp(controller)),
//           Expanded(child: otp(controller)),
//           Expanded(child: otp(controller)),
//           Expanded(child: otp(controller)),
//           Expanded(child: otp(controller)),
//           Expanded(child: otp(controller))
//         ],
//       ),
//     );
