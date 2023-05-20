import 'package:flutter/material.dart';
import 'package:indoc/config/app_config.dart';

import 'package:indoc/screens/searchscreen.dart';
import 'package:indoc/screens/settings.dart';
import 'package:indoc/pages/tab_pages.dart';
import 'package:indoc/config/tabview_config.dart';

class Dash extends StatelessWidget {
  const Dash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        centerTitle: true,
        title: SizedBox(
          height: 55,
          child: ElevatedButton(
            onPressed: () {
             
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchPage()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.search_rounded),
                const Text(
                  "Search Documents",
                  textScaleFactor: 1.2,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Settings()),
                      );
                    },
                    tooltip: "Settings",
                    icon: const Icon(Icons.settings)),
              ],
            ),
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
          buildButton(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TabView(
                  tabCount: 2,
                  tabBars: TabBar(
                    tabs: [
                      Tab(
                        child: Text("Correction"),
                      ),
                      Tab(
                        child: Text("Finder"),
                      ),
                    ],
                  ),
                  title: "Aaadhar card",
                  tabpages: [
                    TabPages(),
                    TabPages(),
                  ],
                ),
              ),
            );
          }, "Aadhaar Card", Icons.badge_outlined, Colors.red),
          buildButton(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TabView(
                  tabCount: 3,
                  tabBars: TabBar(
                    tabs: [
                      Tab(
                        child: Text("New"),
                      ),
                      Tab(
                        child: Text("Correction"),
                      ),
                      Tab(
                        child: Text("Finder"),
                      ),
                    ],
                  ),
                  title: "Pan Card",
                  tabpages: [
                    TabPages(),
                    TabPages(),
                    TabPages(),
                  ],
                ),
              ),
            );
          }, "Pan Card", Icons.badge_outlined, Colors.indigo),
          buildButton(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TabView(
                  tabCount: 2,
                  tabBars: TabBar(
                    tabs: [
                      Tab(
                        child: Text("New"),
                      ),
                      Tab(
                        child: Text("Correction"),
                      ),
                    ],
                  ),
                  title: "Income Certificate",
                  tabpages: [
                    TabPages(),
                    TabPages(),
                  ],
                ),
              ),
            );
          }, "Income Certificate", Icons.description_outlined, Colors.blue),
          buildButton(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TabView(
                  tabCount: 2,
                  tabBars: TabBar(
                    tabs: [
                      Tab(
                        child: Text("New"),
                      ),
                      Tab(
                        child: Text("Correction"),
                      ),
                    ],
                  ),
                  title: "Caste Certificate",
                  tabpages: [
                    TabPages(),
                    TabPages(),
                  ],
                ),
              ),
            );
          }, "Caste Certificate", Icons.description_outlined, Colors.orange),
          buildButton(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TabView(
                  tabCount: 2,
                  tabBars: TabBar(
                    tabs: [
                      Tab(
                        child: Text("New"),
                      ),
                      Tab(
                        child: Text("Correction"),
                      ),
                    ],
                  ),
                  title: "Domicile Certificate",
                  tabpages: [
                    TabPages(),
                    TabPages(),
                  ],
                ),
              ),
            );
          }, "Domicile Certificate", Icons.description_outlined, Colors.green),
          buildButton(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TabView(
                  tabCount: 2,
                  tabBars: TabBar(
                    tabs: [
                      Tab(
                        child: Text("New"),
                      ),
                      Tab(
                        child: Text("Correction"),
                      ),
                    ],
                  ),
                  title: "Ayushman Card",
                  tabpages: [
                    TabPages(),
                    TabPages(),
                  ],
                ),
              ),
            );
          }, "Ayushman Card", Icons.medical_information_outlined,
              Colors.deepOrange),
          buildButton(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TabView(
                  tabCount: 3,
                  tabBars: TabBar(
                    tabs: [
                      Tab(
                        child: Text("New"),
                      ),
                      Tab(
                        child: Text("Correction"),
                      ),
                      Tab(
                        child: Text("Finder"),
                      ),
                    ],
                  ),
                  title: "Ration Card",
                  tabpages: [
                    TabPages(),
                    TabPages(),
                    TabPages(),
                  ],
                ),
              ),
            );
          }, "Ration Card", Icons.shopping_cart_outlined, Colors.orange),
          buildButton(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TabView(
                  tabCount: 2,
                  tabBars: TabBar(
                    tabs: [
                      Tab(
                        child: Text("New"),
                      ),
                      Tab(
                        child: Text("Correction"),
                      ),
                    ],
                  ),
                  title: "Labour Card",
                  tabpages: [
                    TabPages(),
                    TabPages(),
                  ],
                ),
              ),
            );
          }, "Labour Card", Icons.assignment_ind_outlined, Colors.green),
          buildButton(
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TabView(
                    tabCount: 2,
                    tabBars: TabBar(
                      tabs: [
                        Tab(
                          child: Text("New"),
                        ),
                        Tab(
                          child: Text("Correction"),
                        ),
                      ],
                    ),
                    title: "EPFO",
                    tabpages: [
                      TabPages(),
                      TabPages(),
                    ],
                  ),
                ),
              );
            },
            "EPFO",
            Icons.assignment_ind_outlined,
            Colors.purple,
          ),
          buildButton(
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TabView(
                    tabCount: 3,
                    tabBars: TabBar(
                      tabs: [
                        Tab(
                          child: Text("New"),
                        ),
                        Tab(
                          child: Text("Correction"),
                        ),
                        Tab(
                          child: Text("Finder"),
                        ),
                      ],
                    ),
                    title: "All Pensions",
                    tabpages: [
                      TabPages(),
                      TabPages(),
                      TabPages(),
                    ],
                  ),
                ),
              );
            },
            "All Pensions",
            Icons.money_outlined,
            Colors.orange,
          ),
        ],
      ),
    );
  }
}
