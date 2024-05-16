import 'package:get/get.dart';
import 'package:wooshops/common/index.dart';

class StylesIndexController extends GetxController {
  StylesIndexController();

    // 主题
  onThemeSelected() async {
    await ConfigService.to.switchThemeModel();
    update(["styles_index"]);
  }
  

  _initData() {
    update(["styles_index"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
