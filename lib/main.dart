import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';

const options = FirebaseOptions(
  apiKey: "AIzaSyBZ6TmE6ZsVi7bmyUyz81_oKmYY-EM7hlE",
  authDomain: "chat-app-544f1.firebaseapp.com",
  projectId: "chat-app-544f1",
  storageBucket: "chat-app-544f1.appspot.com",
  messagingSenderId: "120176576063",
  appId: "1:120176576063:web:62a4059f3be45497921a8a"
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: options);
  runApp(const App());
}

