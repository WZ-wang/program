import 'package:flutter/material.dart';
import '../catmovie/za/Login.dart';
import '../catmovie/za/Address.dart';

final routes = {
  "/login":(context)=>LoginWidget(),
  "/address":(context,{arguments})=>AddressWidget(arguments:arguments),
};

// 如果你要把路由抽离出去，需要写下面这一堆的代码
var onGenerateRoute=(RouteSettings settings) {
      // 统一处理
      final String name = settings.name; 
      final Function pageContentBuilder = routes[name];
      if (pageContentBuilder != null) {
        if (settings.arguments != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        }else{
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context));
            return route;
        }
      }
};