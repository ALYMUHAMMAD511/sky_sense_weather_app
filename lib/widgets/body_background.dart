import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BodyBackground extends StatelessWidget {
  final Widget child;

  const BodyBackground({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            HexColor('47BFDF'),
            HexColor('4A91FF'),
          ],
        ),
      ),
      child: child,
    );
  }
}