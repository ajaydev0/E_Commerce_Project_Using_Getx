import 'package:demo/utils/Ui_Content.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:demo/app/modules/splash_screen/controllers/splash_controller.dart';

import '../../../../Widgets/AppSize_MediaQuery.dart';
import '../../../../Widgets/Container_Widget.dart';
import '../../../../Widgets/SizeBox_Widget.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Kcontainer(
              h: 200,
              w: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(image.flash_Screen_Img),
              )),
            ),
            // SizedBox(height: 20),
            KsBox(
              h: Kh(context: context, value: 2),
            ),
            KsBox(
              h: Kh(context: context, value: 6),
              w: Kw(context: context, value: 12),
              child: const CircularProgressIndicator(),
            )
          ],
        ),
      ),
    );
  }
}
