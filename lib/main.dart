import 'package:flutter/material.dart';
import 'package:flutter_ujicoba/screens/CourseScreen.dart';
import 'package:flutter_ujicoba/screens/Home.dart';
import 'package:flutter_ujicoba/screens/Jurnal_Screen.dart';
import 'package:flutter_ujicoba/screens/Materi.dart';
import 'package:flutter_ujicoba/screens/Profile_screen.dart';
import 'package:flutter_ujicoba/screens/news_screen.dart';
import 'package:flutter_ujicoba/screens/start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: LoginSignUpScreen(),
      routes: {'/news-screen': (context) => const NewsScreen()},
    );
  }
}
