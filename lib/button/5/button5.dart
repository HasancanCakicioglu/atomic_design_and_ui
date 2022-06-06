import 'package:flutter/material.dart';

class button5 extends StatelessWidget {
  button5({Key? key, this.func,required this.text}) : super(key: key);

  final VoidCallback? func;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(const TextStyle(fontWeight: FontWeight.bold))
      ),
      onPressed: func, child: Text(text));
  }
}