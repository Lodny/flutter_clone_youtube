import 'package:flutter/cupertino.dart';
import 'package:flutter_clone_youtube/component/youtube_bottom_sheet.dart';
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
    if (RouteName.values[index] == RouteName.Plus) {
      _showBottomSheet();
    } else {
      currentBottomNavigationBarIndex(index);
    }
  }

  void _showBottomSheet() {
    Get.bottomSheet(YoutubeBottomSheet());
  }
}
