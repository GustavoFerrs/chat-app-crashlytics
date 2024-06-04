// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/signin');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              reverse: true,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.orange,
                  ),
                  title: Text("Oi, tudo bem?"),
                  subtitle: Text("Fulano"),
                  trailing: Text("21:32"),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Digite sua mensagem"),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
