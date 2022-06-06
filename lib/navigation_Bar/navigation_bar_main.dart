import 'package:atomic_design_AND_ui/navigation_Bar/1/navigationBar1.dart';
import 'package:atomic_design_AND_ui/navigation_Bar/2/navigationBar2.dart';
import 'package:atomic_design_AND_ui/navigation_Bar/3/navigationBar3.dart';
import 'package:flutter/material.dart';


class navigationBarMain extends StatefulWidget {
  navigationBarMain({Key? key}) : super(key: key);

  @override
  State<navigationBarMain> createState() => _navigationBarMainState();
}


class _navigationBarMainState extends State<navigationBarMain> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      extendBody: true,//navigationBarın altında kalan alana body içinde ne varsa o alanada girsin demek oluyor yani bottomnagiatonbarın altı boş kalmıyor
      appBar: AppBar(),
      bottomNavigationBar: Column(
        children: [
          const SizedBox(height: 10,),
          navigationBar1(),
          const SizedBox(height: 10,),
          navigationBar2(),
          const SizedBox(height: 10,),
          Expanded(child: navigationBar3(),),
        ],
      ),
    ),);
  }
}