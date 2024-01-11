// ignore_for_file: unused_local_variable

import 'package:counterapp/shared%20preference10/uihelper.dart';
import 'package:counterapp/05/uihelper05.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class DemoSharedPreferences extends StatefulWidget {
  const DemoSharedPreferences({super.key});

  @override
  State<DemoSharedPreferences> createState() => _DemoSharedPreferencesState();
}

class _DemoSharedPreferencesState extends State<DemoSharedPreferences> {
  @override
  void initState() {
    super.initState();
    getName();
  }

  TextEditingController nameController = TextEditingController();
  String? name;
  getName() async {
    var prefs = await  SharedPreferences.getInstance();
    name = prefs.getString('Name');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Pref"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomTextField(
              nameController, "Enter Name", false, Icons.person),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () async {
              var pref = await  SharedPreferences.getInstance();
              pref.setString("Name" , nameController.text.toString());
              setState(() {
                name = nameController.text.toString();
              });
            },
            child: Text('Save'),
          ),
          SizedBox(
            height: 20,
          ),
          Text("${name ?? "First Time"}")
        ],
      ),
    );
  }
}
