import 'package:get/get.dart';

import '../../view/screens/home_screen/controller/home_controller.dart';
import '../../view/screens/onboarding_screen/controller/onboarding_controller.dart';
import '../../view/screens/profile_screen/controller/profile_controller.dart';
class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    ///==========================Default Custom Controller ==================
    Get.lazyPut(() => ProfileController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => OnboardingController(), fenix: true);



  }
}
