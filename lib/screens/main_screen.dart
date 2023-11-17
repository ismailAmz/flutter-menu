import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:menu/screens/date_screen.dart';
import 'package:menu/screens/list_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _index = 0;
  final List<Widget> _screens = [
    Container(color: Colors.purple),
    Container(color: Colors.blue),
    const DateScreen(),
    Container(color: Colors.green),
    const ListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu')),
      body: _screens[_index],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _index,
        height: 60,
        items: const [
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.call_split, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.pink,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
