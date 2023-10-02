import 'package:demo/app/modules/auth/sign_in/controller/sign_in%20_controller.dart';
import 'package:demo/utils/Ui_Content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Widgets/Container_Widget.dart';
import '../../../../../Widgets/ElevatedButton_Widget.dart';
import '../../../../../Widgets/SizeBox_Widget.dart';
import '../../../../../Widgets/TextField_Widget.dart';
import '../../../../../Widgets/Text_Widget.dart';
import '../../../../../utils/User_Data.dart';
import 'widgets/Error_DialogBox.dart';
import 'widgets/Success_DialogBox.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                KsBox(h: 100),
                Center(
                  child: Kcontainer(
                    h: 220,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(image.flash_Screen_Img),
                    )),
                  ),
                ),
                KsBox(h: 20),
                Ktext(
                    text: "Sign in",
                    size: 45,
                    color: appcolors.black,
                    weight: FontWeight.bold,
                    textAlign: TextAlign.right),
                KsBox(h: 20),
                KtextField(
                  onChanged: (value) {},
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return " Required";
                    }
                    if (!value.trim().contains("@gmail.com")) {
                      return "Enter valid email";
                    }
                    return null;
                  },
                  controller: controller.inputEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  hintText: "test@gmail.com",
                  labelText: "Email or username",
                  prefixIcon: Icons.person,
                  suffixIcon: KData.userEmail == controller.inputEmail.text
                      ? Icon(
                          Icons.check,
                          color: appcolors.mainColor,
                        )
                      : controller.inputEmail.text != ""
                          ? GestureDetector(
                              onTap: () => controller.inputEmail.clear(),
                              child: const Icon(
                                Icons.close,
                                color: appcolors.red,
                              ),
                            )
                          : null,
                ),
                KsBox(h: 10),
                KtextField(
                  onChanged: (value) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return " Requied";
                    }
                    if (!value.trim().contains("@")) {
                      return "Enter Strong Password (@)";
                    }
                    return null;
                  },
                  controller: controller.inputPass,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLength: 5,
                  // maxLengthEnforcement: MaxLengthEnforcement.none,
                  obscureText: controller.passwordVisible,
                  hintText: "@1234",
                  labelText: "Password",
                  prefixIcon: Icons.password,
                  suffixIcon: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        right: 30,
                        child: IconButton(
                          icon: Icon(
                            KData.UserPass == controller.inputPass.text
                                ? Icons.check
                                // : _InputPass.text != ""
                                //     ? Icons.close
                                : null,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      IconButton(
                        icon: Icon(controller.passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          controller.passwordVisible =
                              !controller.passwordVisible;
                        },
                      ),
                    ],
                  ),
                ),
                KsBox(
                  h: 5,
                ),
                KeleButtonText(
                  h: 40,
                  w: 150,
                  text: "Sign In",
                  tSize: 18,
                  tWeight: FontWeight.bold,
                  onPressed: () {
                    //Validation Key
                    if (controller.formKey.currentState!.validate()) {
                      if (controller.inputEmail.text == KData.userEmail &&
                          KData.UserPass == controller.inputPass.text) {
                        successDialogBox(
                          context,
                        );
                      } else if (KData.userEmail !=
                              controller.inputEmail.text ||
                          KData.UserPass != controller.inputPass.text) {
                        error_DialogBox(context, controller.inputEmail.text,
                            controller.inputPass.text);
                      } else {
                        error_DialogBox(context, controller.inputEmail.text,
                            controller.inputPass.text);
                      }
                    } else if (controller.inputEmail.text == "" ||
                        controller.inputPass.text == "") {
                      error_DialogBox(context, controller.inputEmail.text,
                          controller.inputPass.text);
                      // error_DialogBox(context,);
                    }
                    // return null;
                    //Data Matching Logic
                    // (KData.userEmail == _InputEmail.text) &&
                    //         (KData.UserPass == _InputPass.text)
                    //     ?
                    //     : //Error Page
                  },
                ),
                KsBox(h: 30),
                KeleButtonText(
                    h: 25,
                    w: 170,
                    tSize: 14,
                    tColor: appcolors.black,
                    backgroundColor: appcolors.grey,
                    text: "Forgotten password?",
                    onPressed: () {}),
                KsBox(h: 14),
                KeleButtonText(
                    h: 25,
                    w: 240,
                    backgroundColor: appcolors.grey,
                    tSize: 14,
                    tColor: appcolors.black,
                    text: "Don't have an account? Sign Up",
                    onPressed: () {
                      controller.signUpGo();
                    }),
                KsBox(h: 90),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
