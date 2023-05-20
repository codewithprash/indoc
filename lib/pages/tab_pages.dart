import 'package:flutter/material.dart';

class TabPages extends StatelessWidget {
  const TabPages({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            buildCard("Name", "this this documcuments"),
            buildCard("mob numder", "otp le lunga"),
            buildCard("email", "hum kr denge"),
            buildCard("address", "ye ye de do"),
            buildCard("other", "ese ese hoga"),
          ],
        ),
      ),
    );
  }
}

Widget buildCard(title, subtitle) => Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: ListTile(
        title: Text(
          title,
        ),
        subtitle: Text(subtitle),
      ),
    );

// Widget buildTabView(
//   title,
//   tabCount,
//   tabs,
//   tabpages,
// ) {
//   return DefaultTabController(
//     length: tabCount,
//     child: Scaffold(
//       appBar: AppBar(
//         bottom: TabBar(
//           // indicatorColor: Colors.deepOrange,
//           tabs: tabs,
//         ),
//         title: Text(title),
//         centerTitle: true,
//       ),
//       body: TabBarView(
//         children: tabpages,
//       ),
//     ),
//   );
// }
