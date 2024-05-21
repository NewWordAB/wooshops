 

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart'; 

import 'common/index.dart'; 

class Global{
  static Future<void>init() async{
    // WidgetsFlutterBinding.ensureInitialized();
      WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);



    // await Future.wait([
    //   Get.putAsync<CoinfigService>(() async => await CoinfigService().init()),

    // ]).whenComplete(() {

    // });


    await Storage().init();

     // 初始化服务
    
    Get.put<WPHttpService>(WPHttpService());
    
  }
}