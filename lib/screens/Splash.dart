import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ujicoba/screens/start.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // Navigasi ke halaman beranda setelah 3 detik
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => LoginSignUpScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Tampilkan gambar splash screen di sini
        child: Image.asset(
            'assets/images/self.png'), // Ganti path dengan gambar Anda
      ),
    );
  }
}
