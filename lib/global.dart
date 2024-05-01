 

import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

import 'common/index.dart'; 

class Global{
  static Future<void>init() async{
    WidgetsFlutterBinding.ensureInitialized();



    await Future.wait([
      Get.putAsync<CoinfigService>(() async => await CoinfigService().init()),

    ]).whenComplete(() {

    });


    await Storage().init();
  }
}