import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pve/controller/navigationBarController.dart';

class NavigationBarView extends GetView<NavigationBarController>{
  final String title;
  const NavigationBarView({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=>controller.pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(()=>BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        currentIndex: controller.currentIndex.value,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label:'nav_bar.home'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.account_circle_outlined),
            label: 'nav_bar.my'.tr,
          ),
        ],
        onTap: (index){
          controller.currentIndex.value=index;
        },
      )),
    );
  }

}