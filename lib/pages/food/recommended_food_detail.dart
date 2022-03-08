import 'package:flutter/material.dart';
import 'package:onlinefooddelivery/utils/colors.dart';
import 'package:onlinefooddelivery/widgets/widget_app_icon.dart';
import 'package:onlinefooddelivery/widgets/widget_big_text.dart';

class RecommendedFoodDetail extends StatefulWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  State<RecommendedFoodDetail> createState() => _RecommendedFoodDetailState();
}

class _RecommendedFoodDetailState extends State<RecommendedFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(iconData: Icons.remove),
                BigText(text: "\$12.88" + " X " + " 0 "),
                AppIcon(iconData: Icons.add),
              ],
            ),
          ),
           Container(
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
              child:Icon(Icons.favorite,color: AppColors.mainColor,)
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
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(iconData: Icons.clear),
                AppIcon(iconData: Icons.shopping_cart)
              ],
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(0),
                child: Container(
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    width: double.maxFinite,
                    child: Center(
                      child: BigText(text: 'Biryani'),
                    ))),
            pinned: true,
            backgroundColor: Colors.yellow,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/food.png',
                fit: BoxFit.cover,
                width: double.maxFinite,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
                '/ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted./ Try running your application with "flutter run". Youll see the application has a blue toolbar. Then, without quitting the app, try changing the primarySwatch below to Colors.green and then invoke"   is no t restarted.'),
          )
        ],
      ),
    );
  }
}
