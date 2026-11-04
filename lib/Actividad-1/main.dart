import 'package:actividadesdesarollointerfaces/Actividad-1/screens/burger_screen.dart';
import 'package:actividadesdesarollointerfaces/Actividad-1/screens/detail_product.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BurgerScreen(),
    );
  }
}
