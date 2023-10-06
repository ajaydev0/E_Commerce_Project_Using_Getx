// ignore_for_file: avoid_print
import 'package:demo/utils/Ui_Content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../router/app_pages.dart';
import '../../user_data/users.dart';

class SignUpController extends GetxController {
  //SignUp Button Click
  signUpClick(controller) {
    box.value.write("userName", controller.userNameController.text);
    box.value.write("userEmail", controller.userEmailController.text);
    box.value.write("userPass", controller.userPasswordController.text);
    //Dialog Box
    addSuccessFulBox();
    print(box.value.read("userName"));
    print(box.value.read("userEmail"));
    print(box.value.read("userPass"));
  }

  addSuccessFulBox() {
    goSignIn() {
      Get.offAllNamed(Routes.signInScreen);
    }

    return Get.dialog(
      barrierDismissible: false,
      Dialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "User Added",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      // SizedBox(
                      //   width: 5,
                      // ),
                      // Icon(
                      //   Icons.check_circle_rounded,
                      //   color: Colors.green,
                      //   size: 30,
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    // width: 180,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appcolors.blue400, // Background color
                      ),
                      onPressed: () {
                        goSignIn();
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Go to Sign In",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_right_outlined,
                            color: Colors.white,
                            // size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              top: -50,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  //Ekhane Rectangle Size Use
                  child: Icon(
                    Icons.check_circle_rounded,
                    color: Colors.blue,
                    size: 100,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Go to Sign In Page
  backGo() {
    Get.back();
  }

  //Key
  final formKey = GlobalKey<FormState>();
  RxBool passwordVisible = true.obs;
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController userEmailController = TextEditingController();
  final TextEditingController userPasswordController = TextEditingController();
}
