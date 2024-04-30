import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    // return const HelloWidget();
    return Center(
      child: Column(
        children: [
          const HelloWidget(),
          ElevatedButton(onPressed: (){
           Get.toNamed("/splash");
            // controller.onTap(DateTime.now().millisecondsSinceEpoch);
          }, 
          child: const Text("点击 splash"),
          )
        ],),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("login")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
