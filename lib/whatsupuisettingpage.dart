// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class settingUI extends StatelessWidget {
  var msgContent = [
    {
      'Id': "Account",
      "Msg": "Privacy,security.change number",
      "Icon": Icon(Icons.account_balance)
    },
    {
      'Id': "Chats",
      "Msg": "Theme,wallpaper,chats history",
      "Icon": Icon(Icons.account_balance)
    },
    {
      'Id': "Account",
      "Msg": "Privacy,security.change number",
      "Icon": Icon(Icons.message)
    },
    {
      'Id': "Notifications",
      "Msg": "Message,groups & call tones",
      "Icon": Icon(Icons.notification_add)
    },
    {
      'Id': "Storage and Data",
      "Msg": "Network usage,auto-download",
      "Icon": Icon(Icons.storage)
    },
    {
      "Id": "Help",
      "Msg": "Help centre,contact us,privacy policy",
      "Icon": Icon(Icons.help)
    },
    {
      "Icon": Icon(Icons.help),
      "Id": "Invite a Friend",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 10, 49, 44),
      ),
      body: Column(
        children: [
          ListTile(
            trailing: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://th.bing.com/th/id/OIP.CPaOZraDmB5OpVnNiq08qwHaFz?w=235&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
            ),
            title: Text(
              'Programmer',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Hi,Programmer,how are you?',
              style: TextStyle(fontSize: 16),
            ),
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                trailing: Text("${msgContent[index]["Icon"]}"),
                title: Text("${msgContent[index]["Id"]}",style: TextStyle(fontSize: 18),),
                subtitle: Text("${msgContent[index]["Msg"]}"),
              );
            },
            itemCount: msgContent.length,
          ),
          Text("from"),
          Text("Facebook",style: TextStyle(fontWeight: FontWeight.bold,)),
        ],
        
      ),
    );
  }
}
