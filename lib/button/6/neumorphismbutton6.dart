import 'package:flutter/material.dart';

class NeumorphismButton6 extends StatefulWidget {
  const NeumorphismButton6({Key? key}) : super(key: key);

  @override
  State<NeumorphismButton6> createState() => _NeumorphismButton6State();
}

class _NeumorphismButton6State extends State<NeumorphismButton6> {
  bool _isElevated = true;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
          onTap: () {
            setState(() {
              _isElevated = !_isElevated;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(
              milliseconds: 200,
            ),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: _isElevated
                  ? [
                      const BoxShadow(
                        color: Colors.grey,
                        offset: Offset(4, 4),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4, -4),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                    ]
                  : null,
            ),
        
      ),
    );
  }
}