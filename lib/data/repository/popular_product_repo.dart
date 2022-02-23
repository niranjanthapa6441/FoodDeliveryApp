import 'package:food_delivery_app/utils/app_constants.dart';
import 'package:get/get.dart';

import '../../utils/api/api_client.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.get(AppConstants.CUSTOMER_URI);
  }
}
