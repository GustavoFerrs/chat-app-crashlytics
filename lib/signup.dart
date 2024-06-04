import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            height: 229,
            margin: EdgeInsets.all(100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(border: OutlineInputBorder(),
                    labelText: "Seu Nome",
                    hintText: "Digite Seu Nome"
                    ),
                  ),
                TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(border: OutlineInputBorder(),
                    labelText: "E-mail",
                    hintText: "Digite Seu E-mail"
                    ),
                  ),
                TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(border: OutlineInputBorder(),
                    labelText: "Senha",
                    hintText: "Digite Sua Senha"
                    ),
                  ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    child: Text("Sign up"),
                    onPressed: () {
                      Navigator.of(context)
                      ..pop('/signin')
                      ..pushReplacementNamed('/chat');
                    },
                  ),
                ),
                TextButton(
                  child: Text("Back to Login"),
                  onPressed: () {
                    Navigator.pop(context, '/signin');
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
