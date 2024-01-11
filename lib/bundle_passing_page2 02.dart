import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  String name;
   SecondPage({super.key, required this.name});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondPage"),
        centerTitle: true,
      ),
      body: Center(child: Text('${widget.name}')),
    );

  }
}
