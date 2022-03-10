import 'package:get/get.dart';
import 'package:onlinefooddelivery/data/api/api_client.dart';

/// Repo Communicate with Api Client 
class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});
  Future<Response> getPopularProductList()async{
    return await apiClient.get("https://www.dbestech.com/api/product/list");
  }
}