import 'package:flutter/material.dart';
import 'package:home_screen/searchscreen.dart';
import 'package:home_screen/secondscreen.dart';
import 'package:home_screen/thirdscreen.dart';
import 'package:home_screen/homescreen.dart';
import 'package:home_screen/fourthscreen.dart';
import 'package:home_screen/readscreen.dart';
import 'package:home_screen/fifthscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
        '/fourth': (context) => const FourthScreen(),
        '/fifth': (context) => const FifthScreen(),
        '/search': (context) => const SearchScreen(),
        '/Read': (context) => const ReadScreen(),
      },
    );
  }
}
