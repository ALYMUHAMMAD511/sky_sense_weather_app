import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
PreferredSizeWidget customAppBar({
  required BuildContext context,
  String? title,
  List <Widget>? actions,
}) =>
    AppBar(
      elevation: 0,
      leadingWidth: 70,
      iconTheme: const IconThemeData(
        size: 30,
        color: Colors.white,
        shadows: [
          Shadow(color: Colors.black26, offset: Offset(3,3), blurRadius: 5),
        ],
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            HexColor('47BFDF'),
            HexColor('4A91FF'),
          ],
          ),
        ),
      ),
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sky',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 34,
              shadows: [
                Shadow(color: Colors.black26, offset: Offset(3,3), blurRadius: 5),
              ],
            ),
          ),
          Text(
            'Sense',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34,
                color: Colors.yellow,
                shadows: [
                Shadow(color: Colors.black26, offset: Offset(3,3), blurRadius: 5),
            ],
            ),
          ),
        ],
      ),
    );