import 'package:flutter/material.dart';
import 'package:health_taylor/auth/login_page.dart';
import 'package:health_taylor/pages/page1.dart';
import 'package:health_taylor/pages/page2.dart';
import 'package:health_taylor/pages/page3.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _currentPageIndex;

  @override
  void initState() {
    super.initState();
    _currentPageIndex = 0;
  }

  Widget? _bodyWidget() {
    switch (_currentPageIndex) {
      case 0:
        return const Page1();
      case 1:
        return const Page2();
      case 2:
        return const Page3();
      case 3:
        return const LoginPage();
    }
    return null;
  }

  Widget _bottomWidget() {
    return BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF18A5FD),
        onTap: (int index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        currentIndex: _currentPageIndex,
        unselectedItemColor: Colors.blue[700],
        selectedItemColor: Colors.white,
        selectedFontSize: 13,
        unselectedLabelStyle:
        const TextStyle(fontWeight: FontWeight.w600, color: Colors.blue),
        selectedLabelStyle:
        const TextStyle(fontWeight: FontWeight.w600, color: Colors.blue),
        items: [
          BottomNavigationBarItem(
            icon: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.home_rounded,
                  color: Colors.blue[700],
                )),
            label: '홈',
            activeIcon: const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(Icons.home_rounded, color: Colors.white)),
          ),
          BottomNavigationBarItem(
            icon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.book_rounded,
                  color: Colors.blue[700],
                )),
            label: '포트폴리오 제공?',
            activeIcon: const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(Icons.book_rounded, color: Colors.white)),
          ),
          BottomNavigationBarItem(
            icon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.tag_faces_rounded,
                  color: Colors.blue[700],
                )),
            label: '소셜',
            activeIcon: const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(Icons.tag_faces_rounded, color: Colors.white)),
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _bodyWidget(),
        bottomNavigationBar: _bottomWidget(),
      ),
    );
  }
}