import 'package:flutter/material.dart';
import 'package:onlinefooddelivery/utils/colors.dart';
import 'package:onlinefooddelivery/widgets/widget.small.text.dart';
import 'package:onlinefooddelivery/widgets/widget_app_column..dart';
import 'package:onlinefooddelivery/widgets/widget_app_icon.dart';
import 'package:onlinefooddelivery/widgets/widget_big_text.dart';
import 'package:onlinefooddelivery/widgets/widget_expandable_text.dart';
import 'package:onlinefooddelivery/widgets/widget_icon_text.dart';

class PopularFoodDetail extends StatefulWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  State<PopularFoodDetail> createState() => _PopularFoodDetailState();
}

class _PopularFoodDetailState extends State<PopularFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        height: 90,
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(20)),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          ///Background Image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.white38,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('assets/food.png')),
                  borderRadius: BorderRadius.circular(30),
                ),
              )),
              //Icons
          Positioned(
            left: 20,
            right: 20,
            top: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(iconData: Icons.arrow_back_ios),
                AppIcon(iconData: Icons.add_shopping_cart_outlined)
              ],
            ),
          ),
          //introduction food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 330 - 30,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(
                      text: 'Briyani',
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: BigText(text: 'Introduce')),
                          //Expandable text
                          Expanded(
                            child: SingleChildScrollView(
                              child: ExpandableText(
                                
                                text: "Fawad",
                              ),
                            ),
                          )
                  ],
                ),
              )),
            
        ],
      ),
    );
  }
}
