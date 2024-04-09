import 'package:flutter/material.dart';
import 'package:flutter_ujicoba/screens/About.dart';
import 'package:flutter_ujicoba/screens/CourseScreen.dart';
import 'package:flutter_ujicoba/screens/Home.dart';
import 'package:flutter_ujicoba/screens/Jurnal_Screen.dart';
import 'package:flutter_ujicoba/screens/Profile_screen.dart';
import 'package:flutter_ujicoba/screens/news_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0; // set initial screen index here

  final List<Widget> _screens = [
    const HomeScreen(),
    const JurnalScreen(),
    const CourseScreen(),
    const ProfileScreen(),
  ];

  final List<String> _appBarTitles = const [
    "Home",
    "Jurnal",
    "Course",
    "Profile",
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
        title: Text(_appBarTitles[_selectedIndex]),
      ),
      drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 66, 151, 255),
          ),
          child: Text('Self-Impropment'),
        ),
        ListTile(
          title: const Text('About'),
          selected: _selectedIndex == 0,
          onTap: () {
            _onItemTapped(0);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewsScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('Business'),
          selected: _selectedIndex == 1,
          onTap: () {
            // Update the state of the app
            _onItemTapped(1);
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ])),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book_online_outlined,
              color: Colors.black,
            ),
            label: 'Jurnal',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_call,
              color: Colors.black,
            ),
            label: 'Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 62, 139, 255),
        onTap: _onItemTapped, // add onTap callback
      ),
    );
  }
}
