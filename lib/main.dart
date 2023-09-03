import 'package:flutter/material.dart';
import 'package:new_start/navigation_two/screens/api_data.dart';
import 'package:new_start/navigation_two/screens/login_screen.dart';
import 'package:new_start/practice_one.dart';
import 'package:new_start/practice_threee.dart';
import 'package:new_start/practice_two.dart';
import 'package:new_start/screens/home_screen.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        // useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: LoginScreen(),
    );
  }
}
