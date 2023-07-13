/*import 'package:flutter/material.dart';
import 'package:healthtaylor/first.dart';
import 'package:healthtaylor/second_goal.dart';
import 'package:healthtaylor/third.dart';

class Bottom_navigationbar extends StatefulWidget {
  final int selectedIndex;

  const Bottom_navigationbar({Key? key, required this.selectedIndex});

  @override
  State<Bottom_navigationbar> createState() => _Bottom_navigationbar();
}

class _Bottom_navigationbar extends State<Bottom_navigationbar> {
  int _selectedIndex=0;
  static const List<Widget> _widgetOptions = <Widget>[
    First_loading(),
    Second_goal(),
    Third(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>_widgetOptions[_selectedIndex]),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.health_and_safety),
          label: '유용근 님의 건강상태',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: '섭취 이력',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.payment),
          label: '구매하기',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }
}*/