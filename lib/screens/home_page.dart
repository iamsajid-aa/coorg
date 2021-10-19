import 'package:coorg/screens/navigation_pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _children = [
    Home(),
    Center(
      child: Text("sss"),
    ),
    Center(
      child: Text("aaaa"),
    ),
    Center(
      child: Text("aaaa"),
    ),
  ];

  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Icon(
            CupertinoIcons.location_circle,
            color: Colors.blue,
            size: 30,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              Icons.favorite,
              color: Colors.blue,
              size: 30,
            ),
          ),
        ],
      ),
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: '_'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: '_'),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: '_'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '_'),
        ],
      ),
    );
  }
}
