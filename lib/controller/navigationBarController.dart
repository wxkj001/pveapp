import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pve/view/navigationBar/homeView.dart';
import 'package:pve/view/navigationBar/myView.dart';

class NavigationBarController extends GetxController{
  final title = 'My Awesome View'.obs;
  final List<Widget> pages=[
    HomeView(),
    MyView()
  ];
  final currentIndex=0.obs;
}
class NavigationBarBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(NavigationBarController());
  }

}