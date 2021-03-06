
import 'package:get/get.dart';
import 'package:onlinefooddelivery/controllers/popular_product_controllers.dart';
import 'package:onlinefooddelivery/data/api/api_client.dart';
import 'package:onlinefooddelivery/data/repository/popular_product_repo.dart';
import 'package:onlinefooddelivery/utils/app_contants.dart';

Future<void>init() async{
  //api client
 Get.lazyPut(() => ApiClient(appBaseUrl: AppContants.BASE_URL));
 //Respositor
 Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
 //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));

}