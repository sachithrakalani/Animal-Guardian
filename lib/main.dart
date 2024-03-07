import 'package:animal_gardian/getStartPage.dart';
import 'package:animal_gardian/homeAppBar.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/': (context) => const GetStartPage(
          // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
          child: HomeAppBar(),
        ),
      },
    );
  }
}


