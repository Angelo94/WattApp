import 'package:flutter/material.dart';
import 'placeholder_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    AddTwoNumbers(),
    AddTwoNumbers(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Watt calculator',
          style: TextStyle(
            color: Colors.yellow,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black87,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.flash_on,
              color: Colors.yellow,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.yellow,
        selectedItemColor: Colors.yellow,
        backgroundColor: Colors.black87,
        selectedFontSize: 20.0,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            title: Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('Info'),
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
