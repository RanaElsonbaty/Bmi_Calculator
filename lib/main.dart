import 'package:bmi_calculator/home_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp( const MyAPP());
}
class MyAPP extends StatelessWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bmi(),
    );
  }
}
