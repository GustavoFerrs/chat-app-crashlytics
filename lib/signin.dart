import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Barra do App"),
      ),
      body: Center(
        child: Container(
          height: 300,
          margin: EdgeInsets.all(100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "E-mail",
                    hintText: "Digite Seu E-mail"),
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Senha",
                    hintText: "Digite Sua Senha"),
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text("Sign In"),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/chat');
                  },
                ),
              ),
              Container(
                width: double.infinity,
                child: TextButton(
                  child: Text("New User"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                ),
              ),
              Container(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => throw Exception(),
                  child: const Text("Throw Test Exception"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
