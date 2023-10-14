import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../themes/dark_theme.dart';
import '../../../../themes/light_theme.dart';
import '../../../router/app_pages.dart';
import '../controllers/my_app_controller.dart';

class MyAppView extends GetView<MyAppController> {
  const MyAppView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(MyAppController());
    return GetMaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      // themeMode: controller.theme.value ? ThemeMode.dark : ThemeMode.light,
      // themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initialPage,
      getPages: AppPages.pages,
    );
  }
}
