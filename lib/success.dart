import 'package:flutter/material.dart';

void main() async{
  runApp(const SUCCESS());
}

class SUCCESS extends StatelessWidget {
  const SUCCESS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
            color: Colors.white,
            child: Text('로그인 성공')
        )
    );
  }
}