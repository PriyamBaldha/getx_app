import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controllers/product_controllers.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  ProductController productController = Get.find<ProductController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cart Page"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Obx(
                    () => Text(
                        "Total Product:${productController.totalQuantinty}"),
                  ),
                  Obx(
                    () => Text("Total Product:${productController.totalPrice}"),
                  ),
                ],
              ),
            ),
            Obx(
              () => Expanded(
                flex: 12,
                child: ListView.builder(
                  itemCount: productController.addedProduct.length,
                  itemBuilder: (context, i) {
                    return Card(
                      elevation: 3,
                      child: ListTile(
                        isThreeLine: true,
                        leading: Text("${i + 1}"),
                        title:
                            Text("${productController.addedProduct[i].title}"),
                        subtitle: Text(
                            "${productController.addedProduct[i].description}\nRS. ${productController.addedProduct[i].price}"),
                        trailing: IconButton(
                          onPressed: () {
                            productController.removeProduct(
                                product: productController.addedProduct[i]);
                          },
                          icon: const Icon(Icons.remove),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
