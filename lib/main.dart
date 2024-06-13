import 'package:flutter/material.dart';
import 'package:json_app/pages/home_page_restapi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catelog App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      // routes: {
      //   "/": (context) => const HomePage(),
      //   MyRoutes.homeRoute: (context) => const HomePage(),
      // },
    );
  }
}
