import 'package:david_carretos/screens/home_screen.dart';
import 'package:david_carretos/theme/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'David Carretos',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
      ),
      home: const HomeScreen(),
    );
  }
}
