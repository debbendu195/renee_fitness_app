import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxList<String> myBookingList =
      ['Ongoing', 'Completed'].obs;

  RxList<String> servicesList =
      ['All Services', 'Fitness','Lifestyle'].obs;

  RxList<String> filtersList =
      ['Type', 'Time','Instructor'].obs;
}