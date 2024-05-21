import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wooshops/common/values/index.dart';
import 'package:wooshops/common/widgets/index.dart';

import 'index.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
     return ImageWidget.asset(
      AssetsImages.splashJpg,
      fit: BoxFit.fill, // 填充整个界面
    );
    //  return Column(
      // mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
      // children: [
      //   //文字标题
      //   GetBuilder<SplashController>(
      //     id: "splash_title",
      //     builder: (_){
      //       return Center(
      //         child: Text(controller.title),
      //       );
      //     },
      
      //   ),
      //     //按钮
      // ElevatedButton(
      //   onPressed:(){
      //     controller.onTap(DateTime.now().microsecondsSinceEpoch);
      //   } ,
      //   child: const Text("立刻点击"),
      //   ),

      // ],
    
      // );

      
    // return const Center(
    //   child: Text("SplashPage"),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      id: "splash",
      builder: (_) {
        return  _buildView();
      },
    );
  }
}
