import 'package:flutter/material.dart';

import 'shopping_cart_page.dart';

void main() {
  runApp(const CampusStoreApp());
}

class CampusStoreApp extends StatelessWidget {
  const CampusStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Campus Store',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F6FB),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2164ED)),
      ),
      home: const ShoppingCartPage(),
    );
  }
}
