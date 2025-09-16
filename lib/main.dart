import 'package:aaa/screens/home_screen.dart';
import 'package:flutter/material.dart';
main(){
  runApp(const NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
