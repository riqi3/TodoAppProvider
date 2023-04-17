import 'package:flutter/material.dart';

import 'pages/Completed.dart';
import 'pages/TodoPage.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
    @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    List pages = [
      TodoPage(),
      CompletedPage(),
    ];

    final tabs = [
      Container(),
      Container(),
    ];

    

    return Scaffold(
      appBar: AppBar(
        title: Text('todo app'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white.withOpacity(.7),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fact_check_outlined,
              size: 28,
            ),
            label: 'Todos',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.done,
              size: 28,
            ),
            label: 'Completed',
          ),
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.black,
        onPressed: () {
          print('object');
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}