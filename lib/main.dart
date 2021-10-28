import 'package:flutter/material.dart';
import 'package:shose_shop/layout/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Shop',
      theme: ThemeData(
        primaryColor: Colors.amber
      ),
      debugShowCheckedModeBanner: false,
      home: const AppLayout(),
    );
  }
}
