import 'package:flutter/material.dart';
import 'package:shopping_list_app/screens/shopping_list_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping List App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ShoppingListHomeScreen(),
    );
  }
}
