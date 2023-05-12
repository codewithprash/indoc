import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        toolbarHeight: 60,
        title: Padding(
          padding: const EdgeInsets.only(),
          child: TextFormField(
            autofocus: true,
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Search Documents',
                filled: false),
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
          ),
        ),
      ),
      body: const Center(
        child: Text("data coming soon"),
      ),
    );
  }
}
