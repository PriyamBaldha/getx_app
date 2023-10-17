// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:getx_app/controllers/counter_controller.dart';
//
// class Page1 extends StatefulWidget {
//   const Page1({Key? key}) : super(key: key);
//
//   @override
//   State<Page1> createState() => _Page1State();
// }
//
// class _Page1State extends State<Page1> {
//   CounterController counterController = Get.find<CounterController>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Page 1"),
//         centerTitle: true,
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//                 onPressed: () {
//                   Get.toNamed('/HomePage');
//                 },
//                 child: const Text("Go Back"))
//           ],
//         ),
//       ),
//     );
//   }
// }
