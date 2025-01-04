import 'package:flutter/material.dart';
import 'package:service_provider/common/app_colors.dart';
import 'package:service_provider/common/theme.dart';
import 'package:service_provider/features/authentication/screens/widgets/_SliderWithCircleAvatarState.dart';
import 'package:service_provider/features/authentication/screens/widgets/appbar.dart';


class passwordConfirm extends StatelessWidget {
  const passwordConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: appColors.backgroundColor,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Appbar(
              AppName: "FORGOT PASSWORD",
            ),
            SizedBox(
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                "Create Your New Password",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 19),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: PasswordForm(
                hintText: 'Password',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: PasswordForm(
                hintText: 'Canfirm Password',
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: SliderWithCircleAvatar(
                SlindeName: "Continue",
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Spacer(),
            Container(
              width: double.infinity,
              height: 34,
              alignment: Alignment.center,
              child: Container(
                width: 134,
                height: 5,
                color: appColors.appWhiteColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}



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
