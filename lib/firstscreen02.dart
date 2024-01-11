import 'package:counterapp/secondscreen02.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: ElevatedButton(
        onPressed: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => SecondScreen()));    //push

          // Navigator.pushReplacement(
          //     context, MaterialPageRoute(builder: (context) => SecondScreen()));   // push Replacement
          
          
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('App is Crashed'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Ok'))
                  ],
                );
              });
        },
        child: Text("Navigate"),
      ),
    );
  }
}
