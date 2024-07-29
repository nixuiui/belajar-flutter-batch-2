import 'package:belajar_flutter_batch_2/tabs/home_tab.dart';
import 'package:belajar_flutter_batch_2/tabs/profile_tab.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var index = 0;
  final tabScreens = [
    const HomeTab(),
    const ProfileTab()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Material App'),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.search)
          ),
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.more_vert)
          )
        ],
      ),
      body: tabScreens[index],
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Setting'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          )
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          ),
        ]
      ),
    );
  }
}