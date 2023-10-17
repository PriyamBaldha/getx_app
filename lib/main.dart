import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/views/pages/cart_page.dart';

import 'views/pages/homepage.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'HomePage',
    getPages: <GetPage>[
      GetPage(name: '/HomePage', page: () => const HomePage()),
      GetPage(name: '/CartPage', page: () => const CartPage()),
    ],
  ));
}
