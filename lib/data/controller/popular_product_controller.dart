import 'package:food_delivery_app/data/model/customer.dart';
import 'package:get/get.dart';

import '../repository/popular_product_repo.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo productRepo;

  PopularProductController({required this.productRepo});

  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;
  Future<void> getPopularProductList() async {
    Response response = await productRepo.getPopularProductList();
    print(response.statusCode);
    print(response.statusText);
    if (response.statusCode == 200) {
      print("products");
      _popularProductList = [];
      CustomerResponse customer = CustomerResponse.fromJson(response.body);
      customer.message;
      _popularProductList
          .addAll(CustomerResponse.fromJson(response.body).customers);
      print(_popularProductList);
      update();
    } else if (response.statusCode == 500) {
      print("dfsdfsdfsd");
    }
  }
}
