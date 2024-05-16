import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wooshops/common/index.dart';

import 'index.dart';

class StylesIndexPage extends GetView<StylesIndexController> {
  const StylesIndexPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return ListView(
      children:[
        ListTile(
          onTap: controller.onThemeSelected,
          title:
              Text("主题 : ${ConfigService.to.isDarkModel ? "Dark" : "Light"}"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StylesIndexController>(
      init: StylesIndexController(),
      id: "styles_index",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("styles_index")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
