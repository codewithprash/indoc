import 'package:flutter/material.dart';
import 'package:indoc/pages/home.dart';
import '../screens/dashboard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int page = 0;
  final screens = [
    const Dash(),
    const Hd(),
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
                icon: Icon(Icons.grid_view),
                selectedIcon: Icon(
                  Icons.grid_view_rounded,
                ),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.difference_outlined),
                selectedIcon: Icon(
                  Icons.difference_rounded,
                ),
                label: 'Update'),

            // NavigationDestination(
            //     icon: Icon(Icons.person_outline_rounded),
            //     selectedIcon: Icon(
            //       Icons.person_rounded,
            //     ),
            //     label: 'Profile'),
          ]),
    );
  }
}
