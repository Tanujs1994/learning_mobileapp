import 'package:counterapp/02_01_2024.dart';

import 'package:counterapp/05/05.dart';
import 'package:counterapp/06/06task.dart';
import 'package:counterapp/bundle_passing02.dart';
import 'package:counterapp/card02.dart';
import 'package:counterapp/firstscreen02.dart';
import 'package:counterapp/gridview05.dart';
import 'package:counterapp/shared%20preference10/demo.dart';
import 'package:counterapp/splashscreen.dart';
import 'package:counterapp/statefullwidget.dart';
import 'package:counterapp/textfield.dart';
import 'package:counterapp/whatsupuisettingpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: DemoSharedPreferences(), 
    );
  }
}




