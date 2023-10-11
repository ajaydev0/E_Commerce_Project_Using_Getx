// ignore_for_file: avoid_print
import 'package:demo/Widgets/Scaffold_Widget.dart';
import 'package:demo/app/modules/auth/sign_in/controller/sign_in%20_controller.dart';
import 'package:demo/utils/Ui_Content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Widgets/Container_Widget.dart';
import '../../../../../Widgets/ElevatedButton_Widget.dart';
import '../../../../../Widgets/SizeBox_Widget.dart';
import '../../../../../Widgets/Text_Widget.dart';
import '../../user_data/users.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInController());

    return KScaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                KsBox(h: 40),
                Center(
                  child: Kcontainer(
                    h: 220,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(image.flash_Screen_Img),
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
                Obx(
                  () => TextFormField(
                      onChanged: (value) {},
                      validator: (value) {
                        return controller.validateEmail(value);
                      },
                      controller: controller.inputEmail,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        prefixIconColor: appcolors.mainColor,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            borderSide: BorderSide(color: appcolors.mainColor)),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: "Email or username",
                        labelText: "Email or username",
                        prefixIcon: const Icon(
                          Icons.person,
                        ),
                        suffixIcon: box.value.read("userEmail").toString() ==
                                controller.inputEmail.text
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
                      )),
                ),
                KsBox(h: 10),
                Obx(
                  () => TextFormField(
                    // onChanged: (value) {},
                    validator: (value) {
                      return controller.validatePass(value);
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.inputPass,

                    maxLength: 8,
                    // maxLengthEnforcement: MaxLengthEnforcement.none,
                    obscureText: controller.passwordVisible.value,
                    decoration: InputDecoration(
                      prefixIconColor: appcolors.mainColor,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(color: appcolors.mainColor)),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      hintText: "Password",
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            right: 30,
                            child: Obx(
                              () => IconButton(
                                icon: Icon(
                                  box.value.read("userPass").toString() ==
                                          controller.inputPass.text
                                      ? Icons.check
                                      // : _InputPass.text != ""
                                      //     ? Icons.close
                                      : null,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(controller.passwordVisible.value
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              controller.passwordVisible.value =
                                  !controller.passwordVisible.value;
                            },
                          ),
                        ],
                      ),
                    ),
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
                    controller.signInClick(context, controller);
                  },
                ),
                KsBox(h: 30),
                KeleButtonText(
                    h: 25,
                    w: 170,
                    tSize: 14,
                    tColor: appcolors.black,
                    backgroundColor: appcolors.grey,
                    text: "Forgotten Password ",
                    onPressed: () {
                      box.value.erase();
                    }),
                KsBox(h: 14),
                KeleButtonText(
                    h: 25,
                    w: 240,
                    backgroundColor: appcolors.grey,
                    tSize: 14,
                    tColor: appcolors.black,
                    text: "Don't have an account? Sign Up",
                    onPressed: () {
                      controller.goSignUp();
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
