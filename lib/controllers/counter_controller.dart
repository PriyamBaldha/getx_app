import 'package:get/get.dart';
import 'package:getx_app/models/counter.dart';

class CounterController extends GetxController {
  CounterModel counterModel = CounterModel(counter: 0.obs);

  void increment() {
    counterModel.counter++;
  }

  void decrement() {
    counterModel.counter--;
  }
}
