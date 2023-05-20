import 'package:flutter/material.dart';

class Soon extends StatelessWidget {
  const Soon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        title: Text(
          "Update / Correction",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: const Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: []),
      ),
    );
  }
}
