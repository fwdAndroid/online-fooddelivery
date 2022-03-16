import 'package:get/get.dart';
import 'package:onlinefooddelivery/data/api/api_client.dart';
import 'package:onlinefooddelivery/utils/app_contants.dart';

/// Repo Communicate with Api Client 
class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});
  Future<Response> getPopularProductList()async{
    //End Point
    return await apiClient.get(AppContants.POPULAR_PRODUCT_API);
  }
}