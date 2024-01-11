import 'package:counterapp/bundle_passing_page2%2002.dart';
import 'package:flutter/material.dart';

class BundlePassing extends StatefulWidget {
  const BundlePassing({super.key});

  @override
  State<BundlePassing> createState() => _BundlePassingState();
}

class _BundlePassingState extends State<BundlePassing> {
  TextEditingController UsernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bundle Pasiing'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: UsernameController,
            decoration: InputDecoration(
              hintText: 'Username',
              suffixIcon: Icon(Icons.person),
              prefixIcon: Icon(Icons.near_me),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                var name = UsernameController.text.toString();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SecondPage(name: name),
                  ),
                );
              },
              child: Text('Login')),
        ],
      ),
    );
  }
}
