import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_app/controllers/counter_controller.dart';
import 'package:getx_app/controllers/product_controllers.dart';

import '../../models/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> allProducts = [
    Product(id: 1, title: "Computer", description: "Electronic", price: 52000),
    Product(id: 2, title: "A.C", description: "Electronic", price: 22000),
    Product(id: 3, title: "Watch", description: "Assessors", price: 1500),
    Product(id: 4, title: "Table", description: "Furniture", price: 3000),
    Product(id: 5, title: "Chair", description: "Furniture", price: 3500),
    Product(id: 6, title: "T-Shirt", description: "Cloths", price: 1800),
    Product(id: 7, title: "Shoes", description: "Wearable", price: 3000),
    Product(
        id: 8,
        title: "Washing Machine",
        description: "Electronic",
        price: 52000),
  ];

  CounterController counterController = Get.put(CounterController());
  ProductController productController = Get.put(ProductController());

  bool isDark = false;

  void changeTheme() {
    isDark = !isDark;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx APP"),
        centerTitle: true,
        actions: [
          Center(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                IconButton(
                  onPressed: () {
                    Get.toNamed('/CartPage');
                  },
                  icon: const Icon(Icons.shopping_cart),
                ),
                Obx(
                  () => Text("${productController.totalQuantinty}"),
                ),
              ],
            ),
          )
        ],
      ),

      body: ListView.builder(
        itemCount: allProducts.length,
        itemBuilder: (context, i) {
          return Card(
            elevation: 3,
            child: ListTile(
              isThreeLine: true,
              leading: Text("${allProducts[i].id}"),
              title: Text(allProducts[i].title),
              subtitle: Text(
                  "${allProducts[i].description} \n Rs.${allProducts[i].price}"),
              trailing: IconButton(
                onPressed: () {
                  productController.addProduct(product: allProducts[i]);
                },
                icon: const Icon(Icons.add),
              ),
            ),
          );
        },
      ),

      // body: Container(
      //   alignment: Alignment.center,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Obx(
      //         () => Text(
      //           "${counterController.counterModel.counter}",
      //           style: const TextStyle(fontSize: 80),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     FloatingActionButton(
      //       onPressed: () {
      //         counterController.decrement();
      //       },
      //       child: const Icon(Icons.remove),
      //     ),
      //     const SizedBox(
      //       width: 8,
      //     ),
      //     FloatingActionButton(
      //       onPressed: () {
      //         counterController.increment();
      //       },
      //       child: const Icon(Icons.add),
      //     ),
      //   ],
      // ),

      // body: Container(
      //   alignment: Alignment.center,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       ElevatedButton(
      //           onPressed: () {
      //             Get.toNamed('/Page1');
      //           },
      //           child: const Text("Goto Page 1")),
      //       const SizedBox(height: 5),
      //       ElevatedButton(
      //           onPressed: () {
      //             Get.snackbar(
      //               "Open", "snackbar",
      //               snackPosition: SnackPosition.BOTTOM,
      //               // duration: Duration(seconds: 5),
      //               backgroundColor: Colors.black,
      //               colorText: Colors.white,
      //             );
      //           },
      //           child: const Text("Open SnackBar")),
      //       const SizedBox(height: 5),
      //       ElevatedButton(
      //           onPressed: () {
      //             Get.defaultDialog(
      //               title: "Priyam",
      //               content: const Text("Body"),
      //               actions: [
      //                 ElevatedButton(onPressed: () {}, child: Text("OK")),
      //                 ElevatedButton(
      //                     onPressed: () {
      //                       Get.back();
      //                     },
      //                     child: const Text("Cancle")),
      //               ],
      //               //    backgroundColor: Colors.amber,
      //               barrierDismissible: false,
      //             );
      //           },
      //           child: const Text("Open Dialog")),
      //       const SizedBox(height: 5),
      //       OutlinedButton.icon(
      //         icon: const Icon(Icons.light),
      //         label: const Text("Change Theme"),
      //         onPressed: () {
      //           Get.changeTheme(ThemeData.dark());
      //
      //           // themeMode: (Provider.of<ThemeProvider>(context).isDark)
      //           // ? ThemeMode.dark
      //           //     : ThemeMode.light,
      //         },
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
