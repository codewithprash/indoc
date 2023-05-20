import 'package:flutter/material.dart';
import 'package:indoc/config/app_config.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        title: Text(
          "Settings",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              logOutUser();
            },
            child: const Text("sign out")),
      ),
    );
  }
}
