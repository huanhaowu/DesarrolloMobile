import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Delivery App',
      theme: ThemeData.light().copyWith(
          colorScheme: ColorScheme.fromSwatch(
            brightness: Brightness.light,
            primarySwatch: Colors.amber,
            accentColor: Colors.amberAccent,
          ),
        ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage(),)
      ],
    );
  }
}
