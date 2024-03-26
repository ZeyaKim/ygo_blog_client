import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Stateless Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true, // Material 3 디자인을 사용
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Stateless App'),
        backgroundColor: Theme.of(context).colorScheme.primary, // 앱바의 배경색 설정
      ),
      body: const Center(
        child: Text(
          'Deploy Test!',
          style: TextStyle(fontSize: 24), // 텍스트 스타일 설정
        ),
      ),
    );
  }
}
