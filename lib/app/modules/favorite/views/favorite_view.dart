import 'package:demo/app/modules/favorite/controller/favorite_controller.dart';
import 'package:demo/utils/Ui_Content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Widgets/AppSize_MediaQuery.dart';
import '../../../../Widgets/Container_Widget.dart';
import '../../../../Widgets/Scaffold_Widget.dart';
import '../../../../Widgets/Text_Widget.dart';

class FavoriteView extends GetView<FavoriteController> {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FavoriteController());

    return KScaffold(
      extendBody: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Kcontainer(
            h: 190,
            decoration: BoxDecoration(
              color: appcolors.blue400,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
          Ktext(
            text: "Working...",
            size: 40,
          ),
          Kcontainer(
            h: Kh(context: context, value: 52),
            decoration: BoxDecoration(
              color: appcolors.grey200,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
