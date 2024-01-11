import 'dart:async';

import 'package:counterapp/statefullwidget.dart';
import 'package:flutter/material.dart';

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
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Demo()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: Image.network(
                  'https://th.bing.com/th?id=OIP.TwESrblIhpd2D8XG5VDz5QHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "WhatsApp",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
