import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:indoc/start/start.dart';
import 'package:indoc/utils/app_home.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

final navigatorkey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INDOC',
      darkTheme: ThemeData(
        fontFamily: "Poppins",
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      theme: ThemeData(
        fontFamily: "Poppins",
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      navigatorKey: navigatorkey,
      home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(child: Text('something went wrong'));
            } else if (snapshot.hasData) {
              return const Home();
            } else {
              return const AppPage();
            }
          }),
    );
  }
}
