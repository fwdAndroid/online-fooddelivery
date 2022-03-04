import 'package:flutter/material.dart';

class SmallText extends StatefulWidget {
   final Color?color;
  final String text;
  double height;
  TextOverflow overflow;
   SmallText({  Key? key, this.color = const Color(0xffccc7c5), required this.text, this.height = 1.2,  this.overflow = TextOverflow.ellipsis }) : super(key: key);

  @override
  State<SmallText> createState() => _SmallTextState();
}

class _SmallTextState extends State<SmallText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      
      widget.text,
      overflow: widget.overflow,
      maxLines: 1,
      style: TextStyle(color: widget.color,fontWeight: FontWeight.w200,),
    );
  }
}