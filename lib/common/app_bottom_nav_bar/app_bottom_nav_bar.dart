
import 'package:flutter/material.dart';
import 'package:three_scorers/common/utils/app_colors.dart';
import 'package:three_scorers/features/home/view/home.dart';

class AppBottomNavBar extends StatefulWidget {
  final int initialIndex;

  const AppBottomNavBar({
    super.key,
    this.initialIndex = 0,
  });

  @override
  State<AppBottomNavBar> createState() => _MytapsState();
}

class _MytapsState extends State<AppBottomNavBar> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Home(),
    Home(),
    Home(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Destinations',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.file_copy),
                label: 'My Orders',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
              ),
            ],
            backgroundColor: AppColors.primaryElement,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white, // Color of the active item
            unselectedItemColor:
            Color(0xFFBBBAFF), // Color of the inactive items
            // Background color of the BottomNavigationBar
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
