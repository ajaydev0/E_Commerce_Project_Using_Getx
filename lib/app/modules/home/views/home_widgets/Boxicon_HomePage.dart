// ignore_for_file: non_constant_identifier_names, file_names

import 'package:demo/utils/Ui_Content.dart';
import 'package:flutter/material.dart';

import '../../../../../Widgets/AppSize_MediaQuery.dart';
import '../../../../../Widgets/Container_Widget.dart';
import '../../../../../Widgets/SizeBox_Widget.dart';
import '../../../../../Widgets/Text_Widget.dart';

Widget BoxIcon({
  required BuildContext context,
  icon,
  text,
}) {
  return Column(
    children: [
      Kcontainer(
        h: 50,
        w: Kw(context: context, value: 14),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.4),
            blurRadius: 10.0,
            offset: const Offset(0, 3),
          ),
        ], borderRadius: BorderRadius.circular(20), color: appcolors.blue300),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 2, right: 2),
          child: Icon(icon, color: appcolors.black),
        ),
      ),
      KsBox(
        h: 5,
      ),
      Ktext(
        text: text,
        weight: FontWeight.bold,
        size: 15,
      ),
    ],
  );
}
