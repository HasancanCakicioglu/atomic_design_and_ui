import 'package:flutter/material.dart';



class button4 extends StatelessWidget {
  button4({Key? key,required this.text, this.func}) : super(key: key);

  final String text;
  final VoidCallback? func;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
        fixedSize: MaterialStateProperty.all(const Size(175,30)),
        
      ),
      clipBehavior: Clip.none,

      onPressed: func,
      child: Text(text));
  }
}