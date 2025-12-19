import 'package:flutter/material.dart';
import 'package:flutter_sprint1/screens/bottom_screen/about_bottom_screen.dart';
import 'package:flutter_sprint1/screens/bottom_screen/cart_bottom_screen.dart';
import 'package:flutter_sprint1/screens/bottom_screen/home_bottom_screen.dart';
import 'package:flutter_sprint1/screens/bottom_screen/profile_bottom_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> lstBottomScreen = [
    const HomeBottomScreen(),
    const CartBottomScreen(),
    const AboutScreen(),
    const ProfileBottomScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Game Zone")),
      body: lstBottomScreen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
        backgroundColor: Color(0xFFFF3D71),
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
    ;
  }
}
