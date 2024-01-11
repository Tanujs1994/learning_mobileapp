import 'dart:math';

import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          // count.toString(),
          "${count}",
          style: TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            print("${count}");
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
