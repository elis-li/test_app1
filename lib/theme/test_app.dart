import 'package:flutter/material.dart';
import '../routes/routes.dart';

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      routes: routes,
    );
  }
}