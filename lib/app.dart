import 'package:flutter/material.dart';
import 'views/widgets/header.dart';
import 'views/widgets/main.dart';
import 'views/widgets/footer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Header(), // 상단 바
            Expanded(
              child: MainContent(), // 주요 내용
            ),
            Footer(), // 하단 바
          ],
        ),
      ),
    );
  }
}
