// // ignore_for_file: non_constant_identifier_names, prefer_const_constructors, file_names

import 'package:demo/utils/Ui_Content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/modules/auth/sign_up/controller/sign_up_controller.dart';

class KtextFeild extends StatelessWidget {
  KtextFeild({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
    this.obscureText,
    this.prefixIcon,
    this.prefixIconColor,
    this.maxLength,
    this.suffixIcon,
    this.validator,
    this.textEditingcontroller,
  });

  final SignUpController controller;
  final String hintText;
  final String labelText;
  bool? obscureText = false;
  final Widget? prefixIcon;
  final Color? prefixIconColor;
  final int? maxLength;
  final Widget? suffixIcon;
  final TextEditingController? textEditingcontroller;
  // final Function()? validator;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: controller.passwordVisible.value,

      // validator: (value){
      //   validator
      // },
      // validator: (value) {
      //   return controller.validateEmail(value);
      // },
      maxLength: maxLength,
      controller: textEditingcontroller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        prefixIconColor: prefixIconColor,
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
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
    );
  }
}

//New

//

//

// import 'package:demo/utils/Ui_Content.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../app/modules/auth/sign_in/controller/sign_in _controller.dart';

// final controller = Get.put(SignInController());

// class KtextFeild extends StatefulWidget {

//   const KtextFeild({super.key, onChanged,
//     hintText = "Enter Anything",
//     labelText = "Email or username",
//     prefixIcon = Icons.person,
//     suffixIcon,
//     validator,
//     controller,
//     maxLength,
//     prefixIconColor,
//     hintTextColor,
//     readOnly = false,
//     maxLengthEnforcement,
//     obscureText = false,
//     autovalidateMode = AutovalidateMode.onUserInteraction,
//     border,
//     prefixIconSize});

//   @override
//   State<KtextFeild> createState() => _KtextFeildState();
// }

// class _KtextFeildState extends State<KtextFeild> {

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//     readOnly: readOnly,
//     onChanged: onChanged,
//     obscureText: obscureText,
//     maxLengthEnforcement: maxLengthEnforcement,
//     maxLength: maxLength,
//     controller: controller,
//     validator: validator,
//     autovalidateMode: autovalidateMode,
//     decoration: InputDecoration(
//       prefixIconColor: appcolors.mainColor,
//       enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(
//             Radius.circular(10),
//           ),
//           borderSide: BorderSide(color: appcolors.mainColor)),
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.all(
//           Radius.circular(10),
//         ),
//       ),
//       hintText: hintText,
//       hintStyle: TextStyle(color: hintTextColor),
//       labelText: labelText,
//       prefixIcon: Icon(
//         prefixIcon,
//         size: prefixIconSize,
//         color: prefixIconColor,
//       ),
//       suffixIcon: suffixIcon,
//     ),
//   );
//   }
// }

// Widget KtextField(
//    ) {
//   return
// }

// //2
Widget KtextField2(
    {onChanged,
    hintText = "Enter Anything",
    labelText = "Email or username",
    prefixIcon = Icons.person,
    suffixIcon,
    validator,
    controller,
    maxLength,
    prefixIconColor,
    hintTextColor,
    readOnly = false,
    maxLengthEnforcement,
    obscureText = false,
    autovalidateMode = AutovalidateMode.onUserInteraction,
    border,
    prefixIconSize}) {
  return TextFormField(
      readOnly: readOnly,
      decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            color: prefixIconColor,
          ),
          border: border,
          hintStyle: TextStyle(color: hintTextColor),
          hintText: hintText));
}
