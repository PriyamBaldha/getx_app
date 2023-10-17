import 'package:get/get.dart';

import '../models/product.dart';

class ProductController extends GetxController {
  RxList addedProduct = [].obs;

  get totalQuantinty => addedProduct.length;

  get totalPrice {
    int price = 0;

    for (Product product in addedProduct) {
      price = price + product.price;
    }

    return price;
  }

  void addProduct({required Product product}) {
    addedProduct.add(product);
  }

  void removeProduct({required Product product}) {
    addedProduct.remove(product);
  }
}
