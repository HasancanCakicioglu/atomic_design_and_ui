
import 'package:atomic_design_AND_ui/button/buttonMain.dart';
import 'package:atomic_design_AND_ui/navigation_Bar/navigation_bar_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Atomic Design"),
      ),
      body: Wrap(
        children: [
          goNavigate(buttonMainClass(),"Button", context),
          goNavigate(navigationBarMain(),"NavigationBar", context),
        ],
      ),
    );
  }
  Widget goNavigate(Widget child,String text,BuildContext context){
    return ElevatedButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>child));
    }, child: Text(text));
  }
}