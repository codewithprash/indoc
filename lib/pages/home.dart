import 'package:flutter/material.dart';

import 'package:indoc/pages/tab_pages.dart';

class Hd extends StatelessWidget {
  const Hd({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2.5,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: buildButtonData.length,
          itemBuilder: (BuildContext context, int index) {
            return customButton(
                onPressed: () {},
                buttonName: "jvg",
                iconName: Icons.ac_unit_outlined,
                iconColor: Colors.green);
          }),
    );
  }
}

Widget customButton({
  required void Function() onPressed,
  required String buttonName,
  required IconData iconName,
  required Color iconColor,
}) =>
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

List<ButtonData> buildButtonData = [
  ButtonData(
    buttonName: "Aadhaar Card",
    onPressed: () {},
    iconName: Icons.file_copy,
    iconColor: Colors.green,
    tabCount: 2,
    tabBars: const TabBar(
      tabs: [
        Tab(
          child: Text("Correction"),
        ),
        Tab(
          child: Text("Finder"),
        ),
      ],
    ),
    title: "Aadhar Card",
    tabpages: [
      const TabPages(),
      const TabPages(),
    ],
  ),
  ButtonData(
    buttonName: "Aadhaar Card",
    onPressed: () {},
    iconName: Icons.file_copy,
    iconColor: Colors.green,
    tabCount: 2,
    tabBars: const TabBar(
      tabs: [
        Tab(
          child: Text("Correction"),
        ),
        Tab(
          child: Text("Finder"),
        ),
      ],
    ),
    title: "Aadhar Card",
    tabpages: [
      const TabPages(),
      const TabPages(),
    ],
  ),
  ButtonData(
    buttonName: "Aadhaar Card",
    onPressed: () {},
    iconName: Icons.file_copy,
    iconColor: Colors.green,
    tabCount: 2,
    tabBars: const TabBar(
      tabs: [
        Tab(
          child: Text("Correction"),
        ),
        Tab(
          child: Text("Finder"),
        ),
      ],
    ),
    title: "Aadhar Card",
    tabpages: [
      const TabPages(),
      const TabPages(),
    ],
  ),
  ButtonData(
    buttonName: "Aadhaar Card",
    onPressed: () {},
    iconName: Icons.file_copy,
    iconColor: Colors.green,
    tabCount: 2,
    tabBars: const TabBar(
      tabs: [
        Tab(
          child: Text("Correction"),
        ),
        Tab(
          child: Text("Finder"),
        ),
      ],
    ),
    title: "Aadhar Card",
    tabpages: [
      const TabPages(),
      const TabPages(),
    ],
  )
];

class ButtonData {
  final String buttonName;
  final void Function() onPressed;
  final IconData iconName;
  final Color iconColor;
  final int tabCount;
  final PreferredSizeWidget tabBars;
  final String title;
  final List<Widget> tabpages;

  ButtonData({
    required this.buttonName,
    required this.onPressed,
    required this.iconName,
    required this.iconColor,
    required this.tabCount,
    required this.tabBars,
    required this.title,
    required this.tabpages,
  });
}
