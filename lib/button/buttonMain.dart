import 'package:atomic_design_AND_ui/button/1/button1.dart';
import 'package:atomic_design_AND_ui/button/3/glowingButton3.dart';
import 'package:atomic_design_AND_ui/button/4/button4.dart';
import 'package:atomic_design_AND_ui/button/5/button5.dart';
import 'package:atomic_design_AND_ui/button/6/neumorphismbutton6.dart';
import 'package:flutter/material.dart';

class buttonMainClass extends StatefulWidget {
  buttonMainClass({Key? key}) : super(key: key);

  @override
  State<buttonMainClass> createState() => _buttonMainClassState();
}

class _buttonMainClassState extends State<buttonMainClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [

              ...getir(button1()),
              ...getir(GlowingButton()),
              ...getir(button4(text: "Sign In")),
              ...getir(button5(text: "Register Now",func: (){},)),
              ...getir(NeumorphismButton6(), )
              //...getir(glassmorphismButton2()),
            ],
          ),
        ));
  }
  List<Widget> getir(Widget child){
    return [const SizedBox(height: 10,),child];
  }

}
