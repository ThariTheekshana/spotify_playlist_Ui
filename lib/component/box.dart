import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final child;
  const Box({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Center(child: child),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 151, 6, 6),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          // darker shaow on the bottom right
          BoxShadow(
            color: Color.fromARGB(255, 58, 6, 2),
            blurRadius: 15,
            offset: Offset(5, 5),
          ),

          // lighter shadow on the top left
          const BoxShadow(
            color: Color.fromARGB(255, 161, 38, 29),
            blurRadius: 15,
            offset: Offset(-5, -5),
          )
        ],
      ),
    );
  }
}
