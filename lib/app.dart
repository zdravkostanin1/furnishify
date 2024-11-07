import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:furnishify/src/utils/constants.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FURNISHIFY',
      home: Scaffold(
        body: appPages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(LucideIcons.armchair, color: Colors.red, size: 30,),
              icon: Icon(LucideIcons.armchair, color: Colors.black, size: 30,),
              label: 'CATALOG',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(LucideIcons.shopping_bag, color: Colors.red, size: 30),
              icon: Icon(LucideIcons.shopping_bag, color: Colors.black, size: 30,),
              label: 'CART',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(LucideIcons.settings, color: Colors.red, size: 30, ),
              icon: Icon(LucideIcons.settings, color: Colors.black, size: 30,),
              label: 'Settings',
            ),
          ],
        ),
      )
    );
  }
}