import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20), // 헤더의 패딩 설정
      color: Colors.blue, // 헤더의 배경색 설정
      child: Row( // 수평 배치를 위한 Row 위젯 사용
        mainAxisAlignment: MainAxisAlignment.start, // 수평 방향으로 시작점에 배치
        children: [
          const Text('Dummy', style: TextStyle(fontSize: 20, color: Colors.white)), // Dummy 텍스트
          const Text('Title', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold)), // 타이틀 텍스트
          Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround, // 항목들 사이에 공간을 균등하게 배분
  children: [
    InkWell(
      onTap: () {
        // 첫 번째 항목 클릭 시 동작
      },
      child: const Text('Home'),
    ),
    InkWell(
      onTap: () {
        // 두 번째 항목 클릭 시 동작
      },
      child: const Text('About'),
    ),
    // 여기에 더 많은 항목 추가
  ],
)
        ],
      ),
    );
  }
}
