// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Tanuj extends StatefulWidget {
  const Tanuj({super.key});

  @override
  State<Tanuj> createState() => _TanujState();
}

class _TanujState extends State<Tanuj> {
  var arrContent = [
    {
      "Image":
          "https://th.bing.com/th/id/OIP.lZvv2Pzr6xu5E1Ns7_nbwgHaE8?w=248&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"},
          {
            'Title':'Lion'
          },
           {
      "Image":
          "https://th.bing.com/th/id/OIP.lZvv2Pzr6xu5E1Ns7_nbwgHaE8?w=248&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"},
          {
            'Title':'Lion'
          },
          {
      "Image":
          "https://th.bing.com/th/id/OIP.lZvv2Pzr6xu5E1Ns7_nbwgHaE8?w=248&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"},
          {
            'Title':'Lion'
          },
           {
      "Image":
          "https://th.bing.com/th/id/OIP.lZvv2Pzr6xu5E1Ns7_nbwgHaE8?w=248&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"},
          {
            'Title':'Lion'
          },{
      "Image":
          "https://th.bing.com/th/id/OIP.lZvv2Pzr6xu5E1Ns7_nbwgHaE8?w=248&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"},
          {
            'Title':'Lion'
          },
           {
      "Image":
          "https://th.bing.com/th/id/OIP.lZvv2Pzr6xu5E1Ns7_nbwgHaE8?w=248&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"},
          {
            'Title':'Lion'
          },{
      "Image":
          "https://th.bing.com/th/id/OIP.lZvv2Pzr6xu5E1Ns7_nbwgHaE8?w=248&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"},
          {
            'Title':'Lion'
          },
           {
      "Image":
          "https://th.bing.com/th/id/OIP.lZvv2Pzr6xu5E1Ns7_nbwgHaE8?w=248&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"},
          {
            'Title':'Lion'
          },{
      "Image":
          "https://th.bing.com/th/id/OIP.lZvv2Pzr6xu5E1Ns7_nbwgHaE8?w=248&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"},
          {
            'Title':'Lion'
          },
           {
      "Image":
          "https://th.bing.com/th/id/OIP.lZvv2Pzr6xu5E1Ns7_nbwgHaE8?w=248&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"},
          {
            'Title':'Lion'
          },
          
          
     
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
        centerTitle: true,
      ),
      // body: GridView(
      //   gridDelegate:
      //       // SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,mainAxisSpacing: 20,crossAxisSpacing: 20),
      //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 10),  //value increases so sized reduces , value decreases sized increases
      //   children: [
      //     SizedBox(
      //       height: 100,
      //       child: Image.network(
      //           'https://th.bing.com/th?id=OIP.TwESrblIhpd2D8XG5VDz5QHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2'),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       child: Image.network(
      //           'https://th.bing.com/th?id=OIP.TwESrblIhpd2D8XG5VDz5QHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2'),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       child: Image.network(
      //           'https://th.bing.com/th?id=OIP.TwESrblIhpd2D8XG5VDz5QHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2'),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       child: Image.network(
      //           'https://th.bing.com/th?id=OIP.TwESrblIhpd2D8XG5VDz5QHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2'),
      //     ),
      //   ],

      // )
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 20,crossAxisSpacing: 20),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                clipBehavior: Clip.antiAlias,
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Text("${arrContent[index]["Title"]}"),
              ),
            );
          },
          itemCount: arrContent.length,
          ),
    );
  }
}
