import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';


///配置服务
class CoinfigService extends GetxService {
  //这是一个单例写法
  static CoinfigService get to => Get.find();
  
  PackageInfo? _platform;
  String get version => _platform?.version ?? '-';

  //初始化
  Future<CoinfigService> init() async{
   await GetPlatform();
   return this;
  }
  Future<void>GetPlatform()async{
    _platform = await PackageInfo.fromPlatform();
  }
}