import 'package:flutter/material.dart';

//TODO copy right, contact, privacy policy
class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '© 2024 All rights reserved',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              ' | ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              'Privacy Policy',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}