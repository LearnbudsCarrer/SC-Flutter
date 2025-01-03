import 'package:flutter/material.dart';
import 'package:service_provider/common/app_colors.dart';

class PasswordForm extends StatelessWidget {
  String hintText;
  PasswordForm({super.key, this.hintText = ''});

  @override
  Widget build(
    BuildContext context,
  ) {
    AppColors appColors = AppColors();
    return Container(
      width: 360,
      height: 60,
      decoration: BoxDecoration(
          color: appColors.appWhiteColor.withOpacity(.2),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.5),
                spreadRadius: 0.1,
                blurRadius: 1,
                offset: Offset(0, 7))
          ]),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: appColors.appGreyColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.white),
              icon: const Icon(
                Icons.lock_outline,
                color: Colors.white,
              ),
              suffixIcon: IconButton(
                padding: EdgeInsets.only(left: 100),
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility_off_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
