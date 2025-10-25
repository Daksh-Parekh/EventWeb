import 'package:get/get.dart';

class SideMenuController extends GetxController {
  var selectedPageIndex = 0.obs;
  void setPageIndex(int index) {
    selectedPageIndex.value = index;
  }
}
