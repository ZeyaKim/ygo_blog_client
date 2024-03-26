import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10), // 헤더의 패딩 설정
      color: Colors.blue, // 헤더의 배경색 설정
      child: SizedBox(
        width: 1000, // SizedBox의 최대 너비
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // 항목들을 양쪽 끝으로 정렬
          children: [
            Row( // 중앙 네비게이션 항목
              children: [
                const Icon(Icons.flutter_dash, size: 40, color: Colors.white), // Flutter Dash 아이콘
                const SizedBox(width: 10), // 아이콘과 타이틀 사이의 간격
                const Text('Title', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.normal)), // 타이틀 텍스트
                const SizedBox(width: 30), // 항목 사이의 간격
                InkWell(
                  onTap: () {
                    // 'Home' 클릭 시 수행할 동작
                  },
                  child: const Text('Home', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.normal)), // Home 텍스트
                ),
                const SizedBox(width: 20), // 항목 사이의 간격
                InkWell(
                  onTap: () {
                    // 'About' 클릭 시 수행할 동작
                  },
                  child: const Text('About', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.normal)), // About 텍스트
                ),
                // 여기에 더 많은 네비게이션 항목 추가 가능
              ],
            ),
            const Text('Login', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.normal)), // 오른쪽 끝의 로그인 텍스트
          ],
        ),
      ),
    );
  }
}
