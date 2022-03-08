import 'package:flutter/material.dart';
import 'package:onlinefooddelivery/utils/colors.dart';
import 'package:onlinefooddelivery/widgets/widget.small.text.dart';
import 'package:onlinefooddelivery/widgets/widget_big_text.dart';
import 'package:onlinefooddelivery/widgets/widget_icon_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({ Key? key, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: text),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: AppColors.mainColor,
                              );
                            }),
                          ),
                          
                          SmallText(text: '4.5'),
                         
                          SmallText(text: '1287'),
                          
                          
                          SmallText(
                            text: 'comments',
                            overflow: TextOverflow.clip,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                         
                          IconAndTextWidget(
                              color: AppColors.textColor,
                              text: 'Normal',
                              iconCOlor: AppColors.iconColor1,
                              iconData: Icons.circle_sharp),
                          
                          IconAndTextWidget(
                              color: AppColors.mainColor,
                              text: '1.7Km',
                              iconCOlor: AppColors.mainColor,
                              iconData: Icons.location_on),
                          
                          IconAndTextWidget(
                              color: AppColors.mainColor,
                              text: '23 min',
                              iconCOlor: AppColors.iconColor2,
                              iconData: Icons.access_time_rounded)
                        ],
                      )
                    ],
                  );
  }
}