// ignore_for_file: prefer_const_constructors, dead_code

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Test1 extends StatelessWidget {
  var arrContent = [
    {
      "Id": 1,
      "Name": "WscubeTech",
      "Image":
          "https://th.bing.com/th?id=OIP.SxuyKL-Ca-_bXp1TC4c4-gHaF3&w=280&h=222&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"
    },
    {
      "Id": 2,
      "Name": "Rahul",
      "Image":
          "https://th.bing.com/th?id=OIP.ybB2a0HimX1I-ybBY4pOPwHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"
    },
    {
      "Id": 3,
      "Name": "Tanuj",
      "Image":
          "https://th.bing.com/th?id=OIP.ybB2a0HimX1I-ybBY4pOPwHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"
    },
    {
      "Id": 4,
      "Name": "Ravi",
      "Image":
          "https://th.bing.com/th?id=OIP.SxuyKL-Ca-_bXp1TC4c4-gHaF3&w=280&h=222&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"
    },
    {
      "Id": 5,
      "Name": "Atul",
      "Image":
          "https://th.bing.com/th?id=OIP.SxuyKL-Ca-_bXp1TC4c4-gHaF3&w=280&h=222&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"
    },
    {
      "Id": 6,
      "Name": "Vikash",
      "Image":
          "https://th.bing.com/th?id=OIP.SxuyKL-Ca-_bXp1TC4c4-gHaF3&w=280&h=222&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"
    },
    {
      "Id": 7,
      "Name": "Vijay",
      "Image":
          "https://th.bing.com/th?id=OIP.SxuyKL-Ca-_bXp1TC4c4-gHaF3&w=280&h=222&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"
    },
    {
      "Id": 8,
      "Name": "Kamal",
      "Image":
          "https://th.bing.com/th?id=OIP.SxuyKL-Ca-_bXp1TC4c4-gHaF3&w=280&h=222&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Widget"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("${arrContent[index]["Image"]}"),
            ),
            title: Text("${arrContent[index]["Name"]}"),
            subtitle: Text("${arrContent[index]["Id"]}"),
            trailing: Icon(Icons.track_changes),
          );
        },
        itemCount: arrContent.length,
      ),
      
    );
  }
}


 /* body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
           Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
        ],
      ),*/