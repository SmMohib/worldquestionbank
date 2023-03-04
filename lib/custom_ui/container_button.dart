import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:worldquestionbank/utilitys/colors.dart';
import 'package:worldquestionbank/utilitys/textstyle.dart';

class Custom_Button extends StatelessWidget {
  String? text;
  VoidCallback? ontap;

  Custom_Button({super.key, this.text, this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: buttonColor),
          height: 40,
          width: double.infinity,
          child: Center(
              child: Text(
            text!,
            style: text18(),
          )),
        ));
  }
}
