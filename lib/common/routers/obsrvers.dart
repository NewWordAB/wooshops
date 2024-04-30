import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wooshops/common/index.dart';
import 'package:wooshops/common/routers/pages.dart';
import 'package:wooshops/pages/index.dart';
import 'index.dart';

//记录路由变化
class RouteObservers<R extends Route<dynamic>>extends RouteObserver<R>{
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute){
    super.didPush(route, previousRoute);
    var name = route.settings.name ?? '';
    if(name.isEmpty) RoutePages.history.add(name);
    debugPrint('didPush');
    debugPrint(RoutePages.history.toString());

  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute){
    super.didPop(route, previousRoute);
    RoutePages.history.remove(route.settings.name);
    debugPrint('didPop');
    debugPrint(RoutePages.history.toString());

  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute }){
    super.didReplace(newRoute: newRoute,oldRoute: oldRoute);
    if(newRoute != null){
      var index = RoutePages.history.indexWhere((element){
        return element == oldRoute?.settings.name;
      });
      var name = newRoute.settings.name ?? '';
      if(name.isNotEmpty){
        if(index > 0){
          RoutePages.history[index] = name;
        }else{
          RoutePages.history.add(name);
        }
      }
    }
    debugPrint('didReplace');
    debugPrint(RoutePages.history.toString());
  }

   @override
   void didStartUserGeture(
    Route<dynamic> route, Route<dynamic>? previousRoute){
      super.didStartUserGesture(route, previousRoute);
    }

    @override
    void didStopUserGesture(){
      super.didStopUserGesture();
    }
   


}