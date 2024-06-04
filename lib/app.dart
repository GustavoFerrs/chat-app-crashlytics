import 'package:chat_app/signin.dart';
import 'package:flutter/material.dart';

import 'chat.dart';
import 'signup.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/signin":(context) => Signin(),
        "/signup":(context) => Signup(),
        "/chat":(context) => Chat(),
      },
      initialRoute: '/signin',
      theme: ThemeData.dark(
        useMaterial3: false,
        //primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}