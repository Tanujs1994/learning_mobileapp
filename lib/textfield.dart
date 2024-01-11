import 'dart:developer';

import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // signin() {
  //   var username = usernameController.text.toString();
  //   var password = passwordController.text.toString();   // 1st method

  //   log(username);
  //   log(password);
  // }                // 2nd method

  // signin(String username, String password) {
  //   log(username);
  //   log(password);
  // }        //3rd method

  // sign({required String username, required String password}) {
  //   log(username);
  //   log(password);
  // }                // 4th MEthod

  sign({required String username, required String password}) {
    if (username == "" && password == "") {
      log('Enter Required Fields');
    } else {
      log(username);
      log(password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TextField Widget',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              child: TextField(
                controller: usernameController,
                // onChanged: (value) {
                //   log(value);
                // },
                // obscureText: true,
                // obscuringCharacter: '*',
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter Username',
                  label: Text('Username'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye),
                  prefixIcon: Icon(Icons.password),
                  hintText: "Enter Password",
                  label: Text('Password'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  // var Username = usernameController.text.toString();
                  // var password = passwordController.text.toString();
                  // log(Username);
                  // log(password);    1st method  controller method

                  // signin();     2nd method function method

                  // signin(usernameController.text.toString(),
                  //     passwordController.text.toString());    // 3rd method

                  // sign(
                  //     username: usernameController.text.toUpperCase(),
                  //     password: passwordController.text.toString());    // 4th method

                  sign(
                      username: usernameController.text.toString(),
                      password: passwordController.text.toString());
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9))),
                child: Text('Save'))
          ],
        ),
      ),
    );
  }
}
