import 'package:demo/Widgets/Scaffold_Widget.dart';
import 'package:demo/app/router/app_pages.dart';
import 'package:demo/utils/Ui_Content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Widgets/Container_Widget.dart';
import '../../../../../Widgets/ElevatedButton_Widget.dart';
import '../../../../../Widgets/SizeBox_Widget.dart';
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
                      image: AssetImage(image.flash_Screen_Img),
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
                TextFormField(
                  validator: (value) {
                    return controller.validateName(value);
                  },
                  decoration: InputDecoration(
                    prefixIconColor: appcolors.mainColor,
                    hintText: "User Name",
                    labelText: "User Name",
                    prefixIcon: const Icon(Icons.person),
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
                  ),
                  // maxLength: 8,
                  controller: controller.userNameController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                KsBox(h: 10),
                TextFormField(
                  validator: (value) {
                    return controller.validateEmail(value);
                  },
                  controller: controller.userEmailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    prefixIconColor: appcolors.mainColor,
                    hintText: "E-mail",
                    labelText: "E-mail",
                    prefixIcon: const Icon(Icons.email),
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
                  ),
                ),
                KsBox(h: 10),
                Obx(
                  () => TextFormField(
                    validator: (value) {
                      return controller.validatePass(value);
                    },
                    obscureText: controller.passwordVisible.value,
                    controller: controller.userPasswordController,
                    maxLength: 8,
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
                      hintText: "Password",
                      labelText: "Password",
                      prefixIcon: const Icon(
                        Icons.password,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(controller.passwordVisible.value
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          controller.passwordVisible.value =
                              !controller.passwordVisible.value;
                        },
                      ),
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

                      //
                      //New
                      //
                      // _FormKey.currentState?.validate();
                      // var userName = userNameController.text.trim();
                      // var userPhone = userPhoneController.text.trim();
                      // var userEmail = userEmailController.text.trim();
                      // var userPassword = userPasswordController.text.trim();

                      // Firebase.instance
                      //     .createUserWithEmailAndPassword(
                      //         email: userEmail, password: userPassword)
                      //     .then((Value) => {
                      //           print("User Created"),
                      //         });
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
