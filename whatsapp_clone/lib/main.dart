import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      theme: ThemeData(primaryColor: Colors.teal.shade900),
      home: const HomeView(),
    );
  }
}
