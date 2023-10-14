import 'package:demo/main.dart';
import 'package:demo/utils/Ui_Content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Widgets/AppSize_MediaQuery.dart';
import '../../../../Widgets/Container_Widget.dart';
import '../../../../Widgets/Scaffold_Widget.dart';
import '../../../../Widgets/Text_Widget.dart';
import '../../MyApp/controllers/my_app_controller.dart';
import '../controller/profile_controller.dart';
import 'drawer_items.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());
    var MyAppController() = Get.find();

    return KScaffold(
      key: controller.globalKey,
      endDrawer: SafeArea(
        bottom: false,
        child: drawerBody(
          controller,
          context,
        ),
      ),
      extendBody: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            clipBehavior: Clip.none,
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
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Ktext(
                        text: "My Profile",
                        size: 25,
                        weight: FontWeight.bold,
                        color: appcolors.white),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          //Open Drawer
                          controller.globalKey.currentState?.openEndDrawer();
                        },
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 27,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 110),
                child: Center(
                  child: Kcontainer(
                    alignment: Alignment.center,
                    h: 160,
                    w: 160,
                    decoration: const BoxDecoration(
                        color: appcolors.white, shape: BoxShape.circle),
                    child: Kcontainer(
                        alignment: Alignment.center,
                        h: 140,
                        w: 140,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(image.Prodile_Img)),
                            color: appcolors.blue400,
                            shape: BoxShape.circle),
                        child: Kcontainer(
                          h: 140,
                          w: 140,
                          alignment: Alignment.bottomRight,
                          child: Kcontainer(
                            h: 33,
                            w: 33,
                            decoration: const BoxDecoration(
                              color: appcolors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  print("Edit Profile Pic");
                                },
                                child: Kcontainer(
                                    h: 28,
                                    w: 28,
                                    decoration: BoxDecoration(
                                      color: appcolors.blue400,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.edit,
                                      size: 16,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
          Kcontainer(
            h: Kh(value: 35 - 2, context: context),
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Ktext(
                      text: controller.profileName,
                      size: 23,
                      weight: FontWeight.bold),
                  Ktext(
                      text: controller.profileEmail,
                      color: appcolors.halkablack),
                ],
              ),
            ),
          ),
          Kcontainer(
            h: Kh(context: context, value: 25),
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
