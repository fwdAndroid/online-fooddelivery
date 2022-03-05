import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:onlinefooddelivery/utils/colors.dart';
import 'package:onlinefooddelivery/widgets/widget.small.text.dart';
import 'package:onlinefooddelivery/widgets/widget_big_text.dart';
import 'package:onlinefooddelivery/widgets/widget_icon_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  double currentValue = 0.0;
  var scaleFactor = 0.8;
  var height = 220;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      currentValue = pageController.page!;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          child: PageView.builder(
             
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildItemPostion(position);
              }),
        ),
        DotsIndicator(
          
          dotsCount: 5,
          position: currentValue.toDouble(),
          decorator: DotsDecorator(
            color: Colors.black87,
            activeColor: AppColors.mainColor,
              size: Size.square(9),
              activeSize: Size(18, 9),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
        ),
        SizedBox(height: 30,),
        Container(
          margin: EdgeInsets.only(left: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: 'Popular'),
              SizedBox(width: 10,),
              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: BigText(text: '.',color: Colors.black26,),
              ),
              SizedBox(width: 10,),
              Container(
                margin: EdgeInsets.only(bottom: 2),
                child: SmallText(text: 'Food paring',color: Colors.black26,),
              ),
            ],
          ),
        ),
        ///List of Food
         Container(
           margin: EdgeInsets.only(top: 10),
           height: 310,
           child: ListView.builder(
             physics: AlwaysScrollableScrollPhysics(),
             shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Row(
                    children: [
                      // Image
                      Container(
                        width: 120 ,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white38,
                        image: DecorationImage(
                            fit: BoxFit.cover, image: AssetImage('assets/food.png')),
                        borderRadius: BorderRadius.circular(30),
                      
                        ),),
                      // Text
                      Expanded(
                        child: Container(
                          height: 100,
                          
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                           bottomRight: Radius.circular(20)),
                           color: Colors.white
                         ),
                         child: Padding(padding: EdgeInsets.only(left: 10),
                         child: Column(
                           children: [
                             BigText(text: 'Nutritions Food'),
                             SmallText(text: 'With Cheese'),

                             SizedBox(height: 7,),
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
                          
                         
                        ],
                      ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [

                           IconAndTextWidget(
                                  color: AppColors.mainColor,
                                  text: '23 min',
                                  style: TextStyle(fontSize: 10),
                                  iconCOlor: AppColors.iconColor2,
                                  iconData: Icons.access_time_rounded),
                         ],
                       )
                           ],
                         ),),
                        ),
                      )
                    ],
                  ),
                );
                        }),
         ),
          
        
      ],
    );
  }

  Widget _buildItemPostion(int position) {
    Matrix4 matrix4 = Matrix4.identity();
    if (position == currentValue.floor()) {
      var currScale = 1 - (currentValue - position) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (position == currentValue.floor() + 1) {
      var currScale =
          scaleFactor + (currentValue - position + 1) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currenntScale = 0.8;
      matrix4 = Matrix4.diagonal3Values(1, currenntScale, 1)
        ..setTranslationRaw(0, height * (1 - scaleFactor), 1);
    }
    return 
       Transform(
         transform: matrix4,
         child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10, left: 10, top: 10),
              height: 220,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('assets/food.png')),
                  borderRadius: BorderRadius.circular(30),
                  color: position.isEven ? Color(0xff69c5df) : Color(0xff9294cc)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(right: 6, left: 6, bottom: 30),
                height: 124,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(color: Color(0xffe8e8e8), offset: Offset(0, 5))
                ], borderRadius: BorderRadius.circular(30), color: Colors.white),
                child: Container(
                  padding: EdgeInsets.only(top: 15, left: 5, right: 5, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: 'Chinese Side'),
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
                  ),
                ),
              ),
            ),
          ],
      
    ),
       );
  }
}
