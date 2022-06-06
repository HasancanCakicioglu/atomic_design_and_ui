import 'package:atomic_design_AND_ui/navigation_Bar/3/screens3/1.dart';
import 'package:atomic_design_AND_ui/navigation_Bar/3/screens3/2.dart';
import 'package:atomic_design_AND_ui/navigation_Bar/3/screens3/3.dart';
import 'package:atomic_design_AND_ui/navigation_Bar/3/screens3/4.dart';
import 'package:flutter/material.dart';

class navigationBar3 extends StatefulWidget {
  navigationBar3({Key? key}) : super(key: key);

  @override
  State<navigationBar3> createState() => _navigationBar3State();
}

class _navigationBar3State extends State<navigationBar3> {
  int currentTab = 0;
  final screen = <Widget>[
    navigationBarScreeen1(),
    navigationBarScreeen2(),
    navigationBarScreeen3(),
    navigationBarScreeen4(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const navigationBarScreeen1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = navigationBarScreeen1();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "DashBoard",
                          style: TextStyle(
                              color:
                                  currentTab == 0 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),

                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = navigationBarScreeen2();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Chat",
                          style: TextStyle(
                              color:
                                  currentTab == 1 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              )
              ,
              Row(children: [
                MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = navigationBarScreeen3();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentTab == 2 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Profil",
                          style: TextStyle(
                              color:
                                  currentTab == 2 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),

                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = navigationBarScreeen4();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Profil",
                          style: TextStyle(
                              color:
                                  currentTab == 3 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
              ],)
            
            ],
          ),
        ),
      ),
    );
  }
}
