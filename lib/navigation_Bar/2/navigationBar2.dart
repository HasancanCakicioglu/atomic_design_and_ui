import 'package:flutter/material.dart';


class navigationBar2 extends StatefulWidget {
  navigationBar2({Key? key}) : super(key: key);

  @override
  State<navigationBar2> createState() => _navigationBar2State();
}

class _navigationBar2State extends State<navigationBar2> {

  int currentIndex=0;

  final items = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home,size: 30,),),
    const BottomNavigationBarItem(label: "format",icon: Icon(Icons.format_overline,size: 30,),),
    const BottomNavigationBarItem(label: "sc",icon: Icon(Icons.sd_card_alert,size: 30,),),
    const BottomNavigationBarItem(label: "aspect",icon: Icon(Icons.aspect_ratio,size: 30,),),
    
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: items,
      backgroundColor: Colors.green,
      unselectedItemColor: Colors.deepOrangeAccent,
      selectedItemColor: Colors.red,
      onTap: (index){
        setState(() {
          currentIndex = index;
        });
      },
      
      
      );
  }
}