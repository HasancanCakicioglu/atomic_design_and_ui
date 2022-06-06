import 'dart:ui';

import 'package:flutter/material.dart';

class glassmorphismButton2 extends StatefulWidget {
  const glassmorphismButton2({Key? key}) : super(key: key);

  @override
  State<glassmorphismButton2> createState() => _glassmorphismButton2State();
}

class _glassmorphismButton2State extends State<glassmorphismButton2> {
  bool _isBlur=false;
  @override
  Widget build(BuildContext context) {
    return  Stack(
          children: [
            
            Center(child: GestureDetector(
              onTap: (){
                setState(() {
                  _isBlur = !_isBlur;
                });
              },child: GlassMorphism(
                blur : _isBlur ? 20 : 0,
                opacity:0.2,
                child:const SizedBox(
                  height: 50,
                  width: 75,
                ),
              ),
            ),),
          ],
        
      
    );
  }
}


class GlassMorphism extends StatelessWidget {
  
  final double blur;
  final double opacity;
  final Widget child;
  const GlassMorphism({
    Key? key,
    required this.blur,
    required this.opacity,
    required this.child,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(filter: ImageFilter.blur(sigmaX: blur,sigmaY: blur),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(opacity),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            width: 1.5,
            color: Colors.white.withOpacity(0.2)
          )
        ),
      ),
      ),
    );
  }
}
