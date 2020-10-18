import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prapare/controllers/theme_controller.dart';
import 'package:prapare/routes/app_pages.dart';
import 'package:prapare/views/home/home_view.dart';

void main() {
  Get.lazyPut<ThemeController>(() => ThemeController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeController.to.getThemeModeFromPreferences();
    return GetMaterialApp(
      home: HomeView(),
      getPages: AppPages.pages,
      theme: ThemeController.to.lightTheme.themeData,
      darkTheme: ThemeController.to.darkTheme.themeData,
      themeMode: ThemeController.to.themeMode,
    );
  }
}
