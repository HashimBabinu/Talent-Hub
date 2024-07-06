import 'package:flutter/material.dart';
import 'package:flutter_application_1/USER/add.dart';
import 'package:flutter_application_1/USER/home0.dart';
import 'package:flutter_application_1/USER/note.dart';
import 'package:flutter_application_1/USER/profile.dart';

class Mynavigationbar extends StatefulWidget {
  const Mynavigationbar({super.key});

  @override
  State<Mynavigationbar> createState() => MynavigationbarState();
}

class MynavigationbarState extends State<Mynavigationbar> {
  int _selectedIndex = 0;
  static const List<dynamic> _widgetoptions = [
    Home0(),
    AddProduct(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Talent hub')),
        actions: [
         Padding(
  padding: const EdgeInsets.only(top: 10, right: 10),
  child: InkWell(
    onTap: () {
     Navigator.push(context, MaterialPageRoute(builder: (context) {
       return Note();
     }));
    },
    child: Icon(Icons.notifications),
  ),
)

        ],
        backgroundColor: Color.fromARGB(255, 175, 138, 185),
      ),
      body: Center(
        child: _widgetoptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: (Icon(Icons.home)),
            label: 'home',
            backgroundColor: Color.fromRGBO(112, 5, 5, 0.401),
          ),
          BottomNavigationBarItem(
            icon: (Icon(Icons.add)),
            label: 'Add',
            backgroundColor: Color.fromARGB(248, 20, 12, 11),
          ),
          BottomNavigationBarItem(
            icon: (Icon(Icons.person)),
            label: 'Profile',
            backgroundColor: Color.fromARGB(248, 20, 12, 11),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(248, 20, 12, 11),
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 6,
      ),
    );
  }
}
