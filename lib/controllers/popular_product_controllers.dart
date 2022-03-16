import 'dart:math';

import 'package:get/get.dart';
import 'package:onlinefooddelivery/data/repository/popular_product_repo.dart';
import 'package:onlinefooddelivery/model/product_model.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularPrductList => _popularProductList;
  Future<void> getPopularProductList()async{
   Response response = await popularProductRepo.getPopularProductList();
   if(response.statusCode == 200){
     _popularProductList=[];
     _popularProductList.add(Product.fromJson(response.body).products);
     update();
   }else{

   }
  }
}