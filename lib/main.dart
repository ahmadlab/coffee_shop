import 'package:coffee_shop_preparation/pages/home_page.dart';
import 'package:coffee_shop_preparation/pages/product_detail_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/detail': (context) => ProductDetailPage()
      },
    );
  }
}
