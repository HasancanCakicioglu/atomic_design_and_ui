import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class navigationBar1 extends StatefulWidget {
  navigationBar1({Key? key}) : super(key: key);

  @override
  State<navigationBar1> createState() => _navigationBar1State();
}

class _navigationBar1State extends State<navigationBar1> {

  final navigationBarKey1 = GlobalKey<CurvedNavigationBarState>();
  final int index = 2;

  final items = <Widget>[
    const Icon(Icons.home,size: 30,),
    const Icon(Icons.search,size: 30,),
    const Icon(Icons.favorite,size: 30,),
    const Icon(Icons.settings,size: 30,),
    const Icon(Icons.person,size: 30,),
  ];
  @override
  Widget build(BuildContext context) {
    
    
    return CurvedNavigationBar(
      key: navigationBarKey1,
      index: index,
      items: items,
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: Colors.white,
      color: Colors.white,
      letIndexChange: (e){
        print(e);
       
        return true;
        
      },

      );
    
    
  }
}