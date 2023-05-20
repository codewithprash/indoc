import 'package:flutter/material.dart';

class TabView extends StatelessWidget {
  const TabView(
      {super.key,
      required this.tabCount,
      required this.tabBars,
      required this.title,
      required this.tabpages});
  final int tabCount;
  final PreferredSizeWidget tabBars;
  final String title;
  final List<Widget> tabpages;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabCount,
      child: Scaffold(
        appBar: AppBar(
          bottom: tabBars,
          title: Text(title),
          centerTitle: true,
        ),
        body: TabBarView(
          children: tabpages,
        ),
      ),
    );
  }
}
