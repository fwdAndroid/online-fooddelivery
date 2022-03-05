import 'package:flutter/material.dart';
import 'package:onlinefooddelivery/home/food_page_body.dart';
import 'package:onlinefooddelivery/utils/colors.dart';
import 'package:onlinefooddelivery/widgets/widget.small.text.dart';
import 'package:onlinefooddelivery/widgets/widget_big_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({ Key? key }) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /// Show Header Section
          Container(
            padding: EdgeInsets.only(right: 10,left: 10),
            margin: EdgeInsets.only(right: 15,top: 45),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  children: [
                     BigText(text: 'Pakistan',color: AppColors.mainColor,size: 30,),
                     Row(
                       children: [
                         SmallText(text: 'Lahore',color: Colors.black54,),
                         Icon(Icons.arrow_drop_down_rounded)
                       ],
                     )
                  ],
                ),
                Center(
                  child: Container(
                    child: Icon(Icons.search,color: Colors.white,),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: AppColors.mainColor,
                    ),
                  ),
                )
              ],),
            ),
          ),
          
          // Show Body Section
          FoodPageBody()
        ],
      ),
    );
  }
}