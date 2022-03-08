import 'package:flutter/material.dart';
import 'package:onlinefooddelivery/utils/colors.dart';
import 'package:onlinefooddelivery/widgets/widget.small.text.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({ Key? key,required this.text }) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String lastHalf;

  bool hiddenText = true;
  double textHeight = 5.64;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.text.length > textHeight){
      firstHalf = widget.text.substring(0,textHeight.toInt());
      lastHalf = widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }else{
      firstHalf = widget.text;
      lastHalf = "";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: lastHalf.isEmpty?SmallText(text: firstHalf):Column(
        children: [
          SmallText(text: hiddenText?(firstHalf+"..."):(firstHalf+lastHalf)),
          InkWell(
            onTap:(){
              setState(() {
                hiddenText=!hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(text: "Show more",color: AppColors.mainColor,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: AppColors.mainColor,)
              ],
            ),
          )
        ],
      )
    );
  }
}