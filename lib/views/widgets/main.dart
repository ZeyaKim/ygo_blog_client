import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1000,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            alignment: Alignment.center,
            color: Colors.black,
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Banner',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}