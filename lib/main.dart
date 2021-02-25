import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          new Flexible(
              child: Padding(
                  padding:
                      EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
                  child: new Text(
                    'If you know the avarage Kwh/Year use this calculation',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ))),
          new Flexible(
              child: Padding(
            padding: EdgeInsets.all(15),
            child: new TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Kwh/Year',
                    contentPadding: EdgeInsets.all(10))),
          )),
          new Flexible(
              child: Padding(
            padding: EdgeInsets.all(15),
            child: new TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Kwh Price',
                    contentPadding: EdgeInsets.all(10))),
          )),
          new Flexible(
              child: Padding(
                  padding: EdgeInsets.all(15),
                  child: new FlatButton(
                    color: Colors.black87,
                    onPressed: () {
                      /*...*/
                    },
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
                        fontSize: 18,
                      ),
                    ),
                  ))),
        ],
      ),
    ),
    Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "info",
            style: optionStyle,
          )
        ],
      ),
    ),
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
        title: const Text(
          'Watt Calculator ',
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate_rounded, color: Colors.yellow),
            label: 'Calculate',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_rounded, color: Colors.yellow),
            label: 'Info',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.yellow,
        selectedItemColor: Colors.yellow,
        backgroundColor: Colors.black87,
        selectedFontSize: 20.0,
        onTap: _onItemTapped,
      ),
    );
  }
}
