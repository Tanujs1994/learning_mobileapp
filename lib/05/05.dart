// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:counterapp/homescreen05.dart';
import 'package:counterapp/signinpage05.dart';
import 'package:counterapp/05/uihelper05.dart';
import 'package:flutter/material.dart';

class Sharma extends StatefulWidget {
  const Sharma({super.key});

  @override
  State<Sharma> createState() => _SharmaState();
}

class _SharmaState extends State<Sharma> {
  TextEditingController emaiController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Grid View'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            // UiHelper().CustumTextField(controller, text, icondata)     //2nd method  when static is not used
            UiHelperr.CustumTextField(
                emaiController, 'Enter Email', Icons.mail, false),
            UiHelperr.CustumTextField(
                passwordController, "Enter Password", Icons.password, true),
            UiHelperr.CustumButton(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            }, "Home Screen" , Colors.blue, Colors.white, 50,200),
            UiHelperr.CustumButton(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignScreen()));
            }, 'Sign in', Colors.red , Colors.white60,40,80),
          ],
        ));
  }
}
