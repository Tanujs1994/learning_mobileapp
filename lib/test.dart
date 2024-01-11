// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Widget'),
        centerTitle: true,
      ),
      // body:Center(
      //   child: Container(
      //     clipBehavior: Clip.antiAlias,
      //     width: 100,
      //     height: 100,
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(20)
      //     ),
      //     child: Image.network('https://media.gettyimages.com/id/1208518753/photo/behind-the-scenes-at-sydney-zoo.jpg?b=1&s=594x594&w=0&k=20&c=L31mHx8c32KD2tvdWL9k1Em0jeD55zduT_M_LgiPAVU=',fit: BoxFit.cover,)),
      // ) ,
      // body: Center(
      //   child: CircleAvatar(
      //     backgroundColor: Colors.red,
      //     radius: 90,
      //     backgroundImage: NetworkImage('https://media.gettyimages.com/id/1208518753/photo/behind-the-scenes-at-sydney-zoo.jpg?b=1&s=594x594&w=0&k=20&c=L31mHx8c32KD2tvdWL9k1Em0jeD55zduT_M_LgiPAVU='),
      //   ),
      // ),
      body: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 20,
                    width: 142,
                    color: Colors.grey,
                    child: Center(
                        child: Text(
                      'Strawberry Pavlova',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Container(
                    height: 160,
                    width: 140,
                    color: Colors.grey,
                    child: Text(
                        'Pavlova is ameringue based dessert named after the Russian ballerine Anna Pavlova. Palova featues a crisp crust and soft,light inside,topped with fruit and whipped cream')),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 20,
                width: 142,
                color: Colors.grey,
                child: Text('****** 170 Reviews'),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 145,
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Column(
                        children: [
                          Icon(Icons.menu),
                          Text('PREP'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('25 min'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.timer),
                          Text('COOK'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('1 hr'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.feed_sharp),
                          Text(' FEEDS'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('4-6'),
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 410),
            child: Container(
                height: 340,
                width: 220,
                child: Image.asset(
                  'assets/images/t.jpeg',
                  fit: BoxFit.cover,
                )),
          ),
        ],
      ),
    );
  }
}
