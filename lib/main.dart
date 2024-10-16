import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/views/page1.dart';
import 'package:shopapp/views/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/first',
      getPages: [
        GetPage(name: '/first', page: () =>  Page1()),
        GetPage(name: '/second', page: () =>  Page2())
      ],
    );
  }
}
