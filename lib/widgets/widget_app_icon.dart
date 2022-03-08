import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData iconData;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  const AppIcon({ Key? key,required this.iconData,this.backgroundColor =const Color(0xfffcf4e4),this.size = 40,this.iconColor = const Color(0xff756d54) }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration:BoxDecoration(
        color: backgroundColor,
        borderRadius:BorderRadius.circular(size/2)
      ),
      child: Icon(iconData,color: iconColor),
    );
  }
}