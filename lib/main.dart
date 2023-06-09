import 'dart:async';

import 'package:delivery_app/controllers/popular_product_controller.dart';
import 'package:delivery_app/pages/gift/popular_gift_details.dart';
import 'package:delivery_app/pages/gift/recommended_gift_detail.dart';
import 'package:delivery_app/pages/home/main_gift_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart'as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      // Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      title: 'Gift Delivery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MainGiftPage(),
    );
  }
}
