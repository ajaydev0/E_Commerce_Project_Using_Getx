import 'package:demo/Widgets/Scaffold_Widget.dart';
import 'package:demo/app/router/app_pages.dart';
import 'package:demo/utils/Ui_Content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Widgets/Container_Widget.dart';
import '../../../../../Widgets/ElevatedButton_Widget.dart';
import '../../../../../Widgets/SizeBox_Widget.dart';
import '../../../../../Widgets/TextField_Widget.dart';
import '../../../../../Widgets/Text_Widget.dart';
import '../controller/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return KScaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Kcontainer(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                KsBox(h: 60),
                Center(
                  child: Kcontainer(
                    h: 220,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(image.flash_Screen_Img),
                    )),
                  ),
                ),
                Ktext(
                  text: "Sign Up",
                  textAlign: TextAlign.right,
                  size: 45,
                  color: appcolors.black,
                ),
                KsBox(h: 4),
                Center(
                  child: Ktext(
                      text: "It's quick and easy.",
                      size: 16,
                      color: Colors.grey),
                ),
                KsBox(h: 10),
                KtextFeild(
                  maxLength: 6,
                  counterText: "",
                  validator: (value) {
                    return controller.validateName(value);
                  },
                  controller: controller.userNameController.value,
                  hintText: "User Name",
                  labelText: "User Name",
                  prefixIcon: const Icon(Icons.person),
                  prefixIconColor: appcolors.mainColor,
                ),
                KsBox(h: 10),
                KtextFeild(
                  validator: (value) {
                    return controller.validateEmail(value);
                  },
                  controller: controller.userEmailController.value,
                  prefixIconColor: appcolors.mainColor,
                  hintText: "E-mail",
                  labelText: "E-mail",
                  prefixIcon: const Icon(Icons.email),
                ),
                KsBox(h: 10),
                Obx(
                  () => KtextFeild(
                    obscureText: controller.passwordVisible.value,
                    controller: controller.userPasswordController.value,
                    hintText: "Password",
                    labelText: "Password",
                    validator: (value) {
                      return controller.validatePass(value);
                    },
                    maxLength: 6,
                    prefixIcon: const Icon(Icons.password),
                    prefixIconColor: appcolors.mainColor,
                    suffixIcon: IconButton(
                      icon: Icon(controller.passwordVisible.value
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        controller.passwordVisible.value =
                            !controller.passwordVisible.value;
                        print(controller.passwordVisible.value);
                      },
                    ),
                  ),
                ),
                KsBox(h: 5),
                KsBox(
                  h: 40,
                  w: 150,
                  child: KeleButtonText(
                    onPressed: () {
                      if (controller.formKey.currentState!.validate()) {
                        controller.signUpClick(controller);
                      }
                    },
                    text: "Sign Up",
                    tSize: 18,
                    tWeight: FontWeight.bold,
                  ),
                ),
                KsBox(h: 20),
                KsBox(
                  h: 25,
                  w: 240,
                  child: KeleButtonText(
                      onPressed: () {
                        Get.offAllNamed(Routes.signInScreen);
                        // controller.backGo();
                      },
                      text: "Already have an account? Log In",
                      tSize: 14,
                      tColor: appcolors.black,
                      backgroundColor: appcolors.grey),
                ),
                KsBox(h: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
