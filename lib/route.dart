import 'package:flutter/material.dart';
import 'package:e_commerce/pages/main_Page.dart';

import 'pages/product_details.dart';
class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      '/': (_) => MainPage(title: 'Main Page',),
      '/detail': (_) => ProductDetailPage()
    };
  }
}