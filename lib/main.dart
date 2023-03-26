import 'package:flutter/material.dart';
import 'package:my_web_porto/pages/home_page.dart';
import 'package:my_web_porto/resources/r.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mahesa WP',
      debugShowCheckedModeBanner: false,
      theme: Resource.appTheme.getTheme(isDark: true),
      home: const HomePage(),
    );
  }
}
