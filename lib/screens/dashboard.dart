import 'package:flutter/material.dart';
import 'package:indoc/utils/app_config.dart';
import 'package:indoc/screens/searchbar.dart';

class Dash extends StatelessWidget {
  const Dash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Searchbar()),
            );
          },
          child: const ListTile(
            title: Text(
              "Search Documents",
            ),
            trailing: Icon(Icons.search),
            leading: Icon(Icons.menu),
          ),
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        childAspectRatio: 2.5,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          buildButton(() {}, "Aadhaar Card", Icons.badge_outlined, Colors.red),
          buildButton(() {}, "Pan Card", Icons.badge_outlined, Colors.indigo),
          buildButton(() {}, "Income Certificate", Icons.description_outlined,
              Colors.blue),
          buildButton(() {}, "Caste Certificate", Icons.description_outlined,
              Colors.orange),
          buildButton(() {}, "Domicile Certificate", Icons.description_outlined,
              Colors.green),
          buildButton(() {}, "Ration Card", Icons.shopping_cart_outlined,
              Colors.orange),
          buildButton(
              () {}, "EPFO", Icons.assignment_ind_outlined, Colors.purple),
          buildButton(
              () {}, "All Pensions", Icons.money_outlined, Colors.orange),
          buildButton(() {}, "Ayushman Card",
              Icons.medical_information_outlined, Colors.deepOrange),
          buildButton(() {}, "Labour Cardd", Icons.assignment_ind_outlined,
              Colors.green),
        ],
      ),
    );
  }
}
