import 'package:flutter/material.dart';
import 'package:furnishify/src/pages/furniture_catalog/view/furniture_catalog.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FURNISHIFY',
      home: FurnitureCatalog(),
      // WelcomePage(),
    );
  }
}