import 'package:demo/utils/Ui_Content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Widgets/Container_Widget.dart';
import '../../../../../Widgets/ElevatedButton_Widget.dart';
import '../../../../../Widgets/SizeBox_Widget.dart';
import '../../../../../Widgets/TextField_Widget.dart';
import '../../../../../Widgets/Text_Widget.dart';
import '../../user_data/users.dart';
import '../controller/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Scaffold(
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
                KtextField(
                  maxLength: 8,
                  controller: controller.userNameController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  hintText: "User Name",
                  labelText: "User Name",
                  prefixIcon: Icons.person,
                  // maxLength: 10,
                  // maxLengthEnforcement: MaxLengthEnforcement.none,
                ),
                // Divider(),
                KsBox(h: 10),
                // KtextField(
                //   controller: userPhoneController,
                //   autovalidateMode: AutovalidateMode.onUserInteraction,
                //   hintText: "Phone Number",
                //   labelText: "Phone Number",
                //   prefixIcon: Icons.phone,
                //   // maxLength: 6,
                //   // maxLengthEnforcement: MaxLengthEnforcement.none,
                // ),
                // KsBox(h: 10),
                KtextField(
                  controller: controller.userEmailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  hintText: "E-mail",
                  labelText: "E-mail",
                  prefixIcon: Icons.email,
                  // maxLength: 22,
                  // maxLengthEnforcement: MaxLengthEnforcement.none,
                ),
                KsBox(h: 10),
                Obx(
                  () => TextFormField(
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
                      controller.signUpClick(controller);

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
                        controller.backGo();
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
