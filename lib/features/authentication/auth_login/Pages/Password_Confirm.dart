import 'package:flutter/material.dart';
import 'package:service_provider/common/theme.dart';
import 'package:service_provider/features/authentication/auth_code/widget/_SliderWithCircleAvatarState.dart';
import 'package:service_provider/features/authentication/auth_code/widget/appbar.dart';
import 'package:service_provider/features/authentication/auth_login/widget/Password_form.dart';

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
