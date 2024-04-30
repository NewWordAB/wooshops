
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wooshops/common/routers/index.dart';
import 'package:wooshops/pages/system/login/index.dart';
import 'package:wooshops/pages/system/splash/index.dart';

class RoutePages {
  // 列表
  // static List<GetPage> list = [];
  static List<GetPage> lsit = [
    GetPage(name:"/",
    page: () => const LoginPage(),
    binding:LoginBinding(),
    ),
    GetPage(
    name: "/splash", 
    page: () => const SplashPage(),
    )
  ];
}
