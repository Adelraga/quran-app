import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:quran_app/features/home/presentation/screen/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _page);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Map<String, dynamic>> _pages = [
    {"page": HomeScreen(), "label": Icon(Icons.home, size: 30)},
    {"page": Placeholder(), "label": Icon(Icons.book, size: 30)},
    {"page": Placeholder(), "label": Icon(Icons.bookmark, size: 30)},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: _page,
        key: UniqueKey(),
        height: 60.0,
        items: _pages.map<Widget>((Map<String, dynamic> item) {
          return item['label'] ??
              Container(); // Return a container if label is null
        }).toList(),
        color: Color.fromARGB(255, 236, 236, 236),
        buttonBackgroundColor: Color.fromARGB(255, 232, 232, 232),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
            _pageController.animateToPage(
              _page,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          });
        },
        letIndexChange: (index) => true,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _page = index;
          });
        },
        children: _pages.map<Widget>((item) => item['page']).toList(),
      ),
    );
  }
}
