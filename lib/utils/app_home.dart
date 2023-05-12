import 'package:flutter/material.dart';
import 'package:indoc/screens/soon.dart';
import '../screens/dashboard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int page = 1;
  final screens = [
    const Soon(),
    const Dash(),
    const MyWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[page],
      bottomNavigationBar: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          selectedIndex: page,
          onDestinationSelected: (index) => setState(() => page = index),
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.edit_document),
                selectedIcon: Icon(
                  Icons.edit_document,
                ),
                label: 'Update'),
            NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(
                  Icons.home_rounded,
                ),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.person_outline_rounded),
                selectedIcon: Icon(
                  Icons.person_rounded,
                ),
                label: 'Profile'),
          ]),
    );
  }
}
