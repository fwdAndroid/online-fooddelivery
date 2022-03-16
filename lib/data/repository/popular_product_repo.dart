import 'package:get/get.dart';
import 'package:onlinefooddelivery/data/api/api_client.dart';

/// Repo Communicate with Api Client 
class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});
  Future<Response> getPopularProductList()async{
    //End Point
    return await apiClient.get("/api/v1/products/popular");
  }
}