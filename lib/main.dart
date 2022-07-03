import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_commerce/pages/main_Page.dart';
import 'package:e_commerce/theme/theme.dart';
import 'package:e_commerce/widget/custom_route.dart';
import 'package:e_commerce/pages/product_details.dart';

import 'route.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce ',
      theme: AppTheme.lightTheme.copyWith(
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: Routes.getRoute(),
      onGenerateRoute: (RouteSettings settings) {
        builder: (BuildContext context) => ProductDetailPage();
      },
      initialRoute: "MainPage",
    );
  }
}