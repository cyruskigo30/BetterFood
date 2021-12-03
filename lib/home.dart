import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //  add state variables and functions
  // selectedIndex keeps tab on tab currently selected and state being tracked by homestate
  int _selectedIndex = 0;

  // Here we define the widgets that will be displayed on each tab
  static List<Widget> pages = <Widget>[
    Container(
      color: Colors.redAccent,
    ),
    Container(
      color: Colors.greenAccent,
    ),
    Container(
      color: Colors.blueAccent,
    ),
  ];
// Fucntion handling tapeed bar items it notifies the framwework that state of this object has changed and rebuilds the object internally
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BetterFood',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),

      //  Show selected tab
      body: pages[_selectedIndex],

      // ?Add bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // set selected tab bar

        // current index tells the bottom navigation bar which tab bar item to highlight
        currentIndex: _selectedIndex,
        // onItemTapped updates the state witht he correct index - changes the color
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card 2',
          ),
        ],
      ),
    );
  }
}
