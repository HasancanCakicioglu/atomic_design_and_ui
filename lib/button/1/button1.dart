
import 'package:flutter/material.dart';

// ignore: camel_case_types
class button1 extends StatelessWidget {
  const button1({
    Key? key,
    this.function, this.height = 50, this.width = 150,this.iconRenk=Colors.green,
    this.icon,this.circular = true,this.textSize=25,
  }) : super(key: key);


  final VoidCallback? function;
  final double height;
  final double width;
  final Color iconRenk;
  final Widget? icon;
  final bool circular;
  final double textSize;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: container(context)
      
    );
  }



  Widget container(BuildContext context){
    return Container(
      
        height: height,
        width: width,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(offset: Offset(0.0, 20.0),
            blurRadius: 30.0,
            color: Colors.black12,)
          ],
          color: Colors.white,
          borderRadius: circular ? BorderRadius.circular(22) : BorderRadius.circular(12),
          
          ),
          child: Row(
            children: [
              Container(
                height: 50.0,
                width: 110.0,
                
                padding: const EdgeInsets.symmetric(vertical: 13.0,horizontal: 15.0),
                child: Text(
                  "Button",
                  style: Theme.of(context).textTheme.button!.apply(color: Colors.white),
                  textScaleFactor: 1.5,
                ),
                decoration: BoxDecoration(
                  color: iconRenk,
                  borderRadius:BorderRadius.only(
                    bottomLeft: circular ? const Radius.circular(88.0) : const Radius.circular(42),
                    topLeft: circular ? const Radius.circular(88.0) : const Radius.circular(42),
                    bottomRight: const Radius.circular(200.0)
                  ),
                ),
              ),
              icon ?? Icon(Icons.home,size: 30,color: iconRenk,),
            ],
          ),
          
          
        );
  }

}
