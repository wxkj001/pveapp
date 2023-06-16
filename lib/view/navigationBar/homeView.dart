import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pve/controller/navigationBar/homeController.dart';

class HomeView extends GetView<HomeController>{
  final selectedOption="pve".obs; // 存储当前选中的选项
  List<String> options = ['pve', '节点2', '节点3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('home.title'.tr),
            Expanded(child: Center(child: Obx(()=>DropdownButton<String>(
              value: selectedOption.value, // 当前选中的选项
              onChanged: (newValue) {
                print(newValue);
                selectedOption.value=newValue!;
              },
              items: options.map<DropdownMenuItem<String>>((String value) {
                // 创建下拉框选项列表
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value), // 显示的文本
                );
              }).toList(),
            )),),)
          ],
        ),
        /*actions: [
          Text("data")
        ],*/
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child:ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index){
              return ListTile(
                title: Text("$index"), // 列表项的标题
              );
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
  /**
   * 下拉刷新方法,为list重新赋值
   */
  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      print('refresh');
    });
  }
}