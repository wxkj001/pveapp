import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pve/controller/navigationBar/myController.dart';

class MyView extends GetView<MyController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('hello'.tr),
      ),
      body: Text("my"),
    );
  }

}