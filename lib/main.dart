import 'package:flutter/material.dart';
import 'package:test_chat/tela_inicial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      
      ),
      home: TelaInicial(),
      debugShowCheckedModeBanner: false,
    );
  }
}