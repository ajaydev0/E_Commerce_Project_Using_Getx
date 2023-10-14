// ignore_for_file: avoid_print

import 'package:demo/app/modules/MyApp/controllers/my_app_controller.dart';
import 'package:demo/main.dart';
import 'package:demo/utils/Ui_Content.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Widgets/Text_Widget.dart';
import '../../../router/app_pages.dart';
import '../controller/profile_controller.dart';

Drawer drawerBody(
  ProfileController controller,
  BuildContext context,
) {
  return Drawer(
    // width: Kw(value: 70, context: context),
    child: Column(
      children: [
        Card(
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(
                right: 80,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      //close Drawer
                      controller.globalKey.currentState?.closeEndDrawer();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: appcolors.black,
                    ),
                  ),
                  Ktext(text: "Setting", size: 22),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Divider(
            thickness: 2,
            color: appcolors.halkablack,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Card(
            child: ListTile(
              title: Ktext(text: "Account Setting"),
              leading: CircleAvatar(
                backgroundColor: appcolors.blue400,
                child: const Icon(
                  Icons.settings,
                  size: 20,
                  color: appcolors.white,
                ),
              ),
              onTap: () {},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Card(
            child: ListTile(
              title: Ktext(text: "My Order"),
              leading: CircleAvatar(
                backgroundColor: appcolors.blue400,
                child: const Icon(
                  Icons.create,
                  size: 20,
                  color: appcolors.white,
                ),
              ),
              onTap: () {},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Card(
            child: ExpansionTile(
              title: Ktext(text: "Appearance"),
              leading: CircleAvatar(
                backgroundColor: appcolors.blue400,
                child: const Icon(
                  Icons.color_lens,
                  size: 20,
                  color: appcolors.white,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.find<MyAppController>().lightMode();
                              // Get.changeThemeMode(ThemeMode.light);
                              // Get.changeTheme(ThemeData.light());

                              print("LightMode");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 50,
                              width: 50,
                              child: const Icon(
                                Icons.light_mode,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text("Light"),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.find<MyAppController>().darkMode();
                              // controller.theme.value = false;
                              // Get.changeThemeMode(ThemeMode.dark);
                              // box.value.write("themeData", ThemeData());
                              // Get.changeTheme(ThemeData.dark());

                              print("DarkMode");
                              // print(KData.themeData);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 50,
                              width: 50,
                              child: const Icon(
                                Icons.dark_mode,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text("Dark"),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.changeThemeMode(ThemeMode.system);
                              print("SystemThemeMode");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 50,
                              width: 50,
                              child: const Icon(
                                Icons.settings_suggest,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text("System"),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Card(
            child: ListTile(
              title: Ktext(text: "Chat with Us"),
              // subtitle: Text("Feel Free to Contact Us"),
              leading: CircleAvatar(
                backgroundColor: appcolors.blue400,
                child: const Icon(
                  Icons.headset_mic_outlined,
                  size: 20,
                  color: appcolors.white,
                ),
              ),

              onTap: () {},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Card(
            child: ListTile(
              title: Ktext(text: "Help Center"),
              leading: CircleAvatar(
                backgroundColor: appcolors.blue400,
                child: const Icon(
                  Icons.question_mark,
                  size: 20,
                  color: appcolors.white,
                ),
              ),
              onTap: () {
                Get.offAllNamed(Routes.signInScreen);
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Divider(
            thickness: 2,
            color: appcolors.halkablack,
          ),
        ),
        Card(
          child: ListTile(
            title: Ktext(text: "Log Out", weight: FontWeight.bold),
            leading: CircleAvatar(
              backgroundColor: appcolors.blue400,
              child: const Icon(
                Icons.logout,
                size: 20,
                color: appcolors.white,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: appcolors.grey600,
            ),
            onTap: () {
              controller.logOutDialogBox(context);
            },
          ),
        ),
      ],
    ),
  );
}
