import 'package:flutter/material.dart';

class BigText extends StatefulWidget {
  final Color?color;
  final String text;
  double size;
  TextOverflow overflow;
   BigText({ Key? key, this.color = const Color(0xffccc7c5), required this.text, this.size = 20,  this.overflow = TextOverflow.ellipsis}) : super(key: key);

  @override
  State<BigText> createState() => _BigTextState();
}

class _BigTextState extends State<BigText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      overflow: widget.overflow,
      style: TextStyle(color: widget.color,fontWeight: FontWeight.w400),
    );
  }
}