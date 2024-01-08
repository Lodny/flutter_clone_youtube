import 'package:get/get.dart';

enum RouteName {
  Home,
  Search,
  Plus,
  Subscribe,
  Library,
}


class HomeController extends GetxService {

  static HomeController get to => Get.find();

  RxInt currentBottomNavigationBarIndex = 0.obs;

  void changeBottomNavigationBarIndex(int index) {
    currentBottomNavigationBarIndex(index);
  }
}
