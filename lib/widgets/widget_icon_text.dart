import 'package:flutter/material.dart';
import 'package:onlinefooddelivery/widgets/widget.small.text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color color;
  final Color iconCOlor;
  final TextStyle? style;

  const IconAndTextWidget({ Key? key, required this.color,required this.text,required this.iconCOlor,required this.iconData, this.style }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData,color: iconCOlor,),
        SizedBox(width: 5,),
        SmallText(text: text,color: color,)
      ],
    );
  }
}