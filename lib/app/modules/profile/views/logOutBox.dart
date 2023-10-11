import 'package:demo/utils/Ui_Content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Widgets/Text_Widget.dart';
import '../../../router/app_pages.dart';
import '../../auth/user_data/users.dart';

Dialog logOutBox(BuildContext context) {
  return Dialog(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Ktext(text: "Log Out ", size: 23, weight: FontWeight.bold),
          Ktext(text: "Are you sure want to log out ?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 35,
                width: 90,
                // width: 180,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.grey[400], // button Background color
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "No",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 35,
                width: 90,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appcolors.blue400,
                    ),
                    onPressed: () {
                      box.value.erase();
                      Get.offAllNamed(Routes.signUpScreen);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Yes",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    )),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
