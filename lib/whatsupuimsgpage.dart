import 'package:flutter/material.dart';

class MsgUi extends StatelessWidget {
  var msgContent = [
    {
      'Id': "Programmer",
      "Msg": "Hi,Programmer,how are you?",
      "Image":
          "https://th.bing.com/th/id/OIP.CPaOZraDmB5OpVnNiq08qwHaFz?w=235&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      'Id': "Programmer",
      "Msg": "Hi,Programmer,how are you?",
      "Image":
          "https://th.bing.com/th/id/OIP.P5IlzIy6Kk1GlI2bc17r3AHaJQ?rs=1&pid=ImgDetMain"
    },
    {
      'Id': "Programmer",
      "Msg": "Hi,Programmer,how are you?",
      "Image":
          "https://th.bing.com/th/id/OIP.PtVatAoSzJAx7FXUvSkbtgHaGc?w=214&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      'Id': "Programmer",
      "Msg": "Hi,Programmer,how are you?",
      "Image":
          "https://th.bing.com/th/id/OIP.hJJ81jpGSbzJpOj9fGOTigHaE1?w=286&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      'Id': "Programmer",
      "Msg": "Hi,Programmer,how are you?",
      "Image":
          "https://th.bing.com/th/id/OIP.YrueedkVOZPPlcaIm7ODUwHaJe?w=146&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      'Id': "Programmer",
      "Msg": "Hi,Programmer,how are you?",
      "Image":
          "https://th.bing.com/th/id/OIP.BIg2U0kwDPur-bppw7KNDgHaE8?w=306&h=204&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      'Id': "Programmer",
      "Msg": "Hi,Programmer,how are you?",
      "Image":
          "https://th.bing.com/th/id/OIP.BIg2U0kwDPur-bppw7KNDgHaE8?w=306&h=204&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      'Id': "Programmer",
      "Msg": "Hi,Programmer,how are you?",
      "Image":
          "https://th.bing.com/th/id/OIP.RSyfC6VxcVD0xObpR-kHDwHaFj?w=214&h=188&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      'Id': "Programmer",
      "Msg": "Hi,Programmer,how are you?",
      "Image":
          "https://th.bing.com/th/id/OIP.0akNbhTf4PkOEdEBj_cJtQHaEf?w=310&h=188&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      'Id': "Programmer",
      "Msg": "Hi,Programmer,how are you?",
      "Image":
          "https://th.bing.com/th/id/OIP.X9Kj0cY7KcqQT0ob14w0JwHaEK?w=282&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      'Id': "Programmer",
      "Msg": "Hi,Programmer,how are you?",
      "Image":
          "https://th.bing.com/th/id/OIP.RSyfC6VxcVD0xObpR-kHDwHaFj?w=214&h=188&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      'Id': "Programmer",
      "Msg": "Hi,Programmer,how are you?",
      "Image":
          "https://th.bing.com/th/id/OIP.BIg2U0kwDPur-bppw7KNDgHaE8?w=306&h=204&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 10, 49, 44),
      ),
      body: ListView.builder(
        itemBuilder: (Context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("${msgContent[index]["Image"]}"),
            ),
            title: Text("${msgContent[index]["Id"]}",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text("${msgContent[index]["Msg"]}",style: TextStyle(fontSize: 16),),
            ),
            trailing: Icon(Icons.message_sharp),
          );
        },
        itemCount: msgContent.length,
      ),
    );
  }
}
