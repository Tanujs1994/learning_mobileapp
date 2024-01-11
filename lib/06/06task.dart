// ignore_for_file: prefer_const_constructors

import 'package:counterapp/06/06taskuihelper.dart';
import 'package:flutter/material.dart';

class TaskUI extends StatefulWidget {
  const TaskUI({super.key});

  @override
  State<TaskUI> createState() => _TaskUIState();
}

class _TaskUIState extends State<TaskUI> {
  TextEditingController SearchController = TextEditingController();
  var arrContent = [
    {
      "Image":
          "https://th.bing.com/th/id/OIP.FU4O6NOYm_WtlbHnoS27XgHaEK?w=289&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      'Image':
          "https://th.bing.com/th/id/OIP.oj4tzdPec9723b08rhdCxgHaE6?w=241&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "Image":
          "https://th.bing.com/th/id/OIP.I4UAeiyFl276i_QbDVpnVgHaFj?w=239&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "Image":
          "https://www.bing.com/th/id/OIP.IyGIMkUVxZiS_mvbFSS8EQHaEI?w=327&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "Image":
          "https://th.bing.com/th/id/OIP.FU4O6NOYm_WtlbHnoS27XgHaEK?w=289&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      'Image':
          "https://th.bing.com/th/id/OIP.oj4tzdPec9723b08rhdCxgHaE6?w=241&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "Image":
          "https://th.bing.com/th/id/OIP.I4UAeiyFl276i_QbDVpnVgHaFj?w=239&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "Image":
          "https://www.bing.com/th/id/OIP.IyGIMkUVxZiS_mvbFSS8EQHaEI?w=327&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "Image":
          "https://th.bing.com/th/id/OIP.FU4O6NOYm_WtlbHnoS27XgHaEK?w=289&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      'Image':
          "https://th.bing.com/th/id/OIP.oj4tzdPec9723b08rhdCxgHaE6?w=241&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "Image":
          "https://th.bing.com/th/id/OIP.I4UAeiyFl276i_QbDVpnVgHaFj?w=239&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "Image":
          "https://www.bing.com/th/id/OIP.IyGIMkUVxZiS_mvbFSS8EQHaEI?w=327&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "Image":
          "https://th.bing.com/th/id/OIP.FU4O6NOYm_WtlbHnoS27XgHaEK?w=289&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      'Image':
          "https://th.bing.com/th/id/OIP.oj4tzdPec9723b08rhdCxgHaE6?w=241&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "Image":
          "https://th.bing.com/th/id/OIP.I4UAeiyFl276i_QbDVpnVgHaFj?w=239&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "Image":
          "https://www.bing.com/th/id/OIP.IyGIMkUVxZiS_mvbFSS8EQHaEI?w=327&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "Image":
          "https://th.bing.com/th/id/OIP.FU4O6NOYm_WtlbHnoS27XgHaEK?w=289&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      'Image':
          "https://th.bing.com/th/id/OIP.oj4tzdPec9723b08rhdCxgHaE6?w=241&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "Image":
          "https://th.bing.com/th/id/OIP.I4UAeiyFl276i_QbDVpnVgHaFj?w=239&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "Image":
          "https://www.bing.com/th/id/OIP.IyGIMkUVxZiS_mvbFSS8EQHaEI?w=327&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task UI'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TaskUiHelper.CustomTextField(
                  SearchController, "Find Picture", Icons.search),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  "Best of the month",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TaskUiHelper.CustomContainer(200, 100, Colors.yellow),
                    TaskUiHelper.CustomContainer(200, 100, Colors.blue),
                    TaskUiHelper.CustomContainer(200, 100, Colors.green),
                    TaskUiHelper.CustomContainer(200, 100, Colors.orange),
                    TaskUiHelper.CustomContainer(200, 100, Colors.red),
                    TaskUiHelper.CustomContainer(200, 100, Colors.pink),
                    TaskUiHelper.CustomContainer(200, 100, Colors.brown),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 10),
                child: Text(
                  "The Color Tone",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TaskUiHelper.CustomContainer1(50, 50, Colors.blue),
                    TaskUiHelper.CustomContainer1(50, 50, Colors.yellow),
                    TaskUiHelper.CustomContainer1(50, 50, Colors.green),
                    TaskUiHelper.CustomContainer1(
                        50, 50, Color.fromARGB(255, 10, 19, 120)),
                    TaskUiHelper.CustomContainer1(50, 50, Colors.red),
                    TaskUiHelper.CustomContainer1(50, 50, Colors.pinkAccent),
                    TaskUiHelper.CustomContainer1(50, 50, Colors.blue),
                    TaskUiHelper.CustomContainer1(50, 50, Colors.brown),
                    TaskUiHelper.CustomContainer1(50, 50, Colors.blue),
                    TaskUiHelper.CustomContainer1(50, 50, Colors.blue),
                    TaskUiHelper.CustomContainer1(50, 50, Colors.black),
                    TaskUiHelper.CustomContainer1(50, 50, Colors.blue),
                    TaskUiHelper.CustomContainer1(50, 50, Colors.orangeAccent),
                    TaskUiHelper.CustomContainer1(50, 50, Colors.yellow),
                    TaskUiHelper.CustomContainer1(50, 50, Colors.blue),
                    TaskUiHelper.CustomContainer1(50, 50, Colors.green),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  "Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 400,
                      width: 200,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Image.network("${arrContent[index]["Image"]}",fit: BoxFit.cover,),
                    );
                  },
                  itemCount: arrContent.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
