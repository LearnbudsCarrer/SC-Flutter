import 'package:flutter/material.dart';
import 'package:service_provider/common/app_colors.dart';
import 'package:service_provider/features/authentication/auth_code/widget/CodeInputScreen.dart';
import 'package:service_provider/features/authentication/auth_code/widget/Numberpad.dart';
import 'package:service_provider/features/authentication/auth_code/widget/_SliderWithCircleAvatarState.dart';
import 'package:service_provider/features/authentication/auth_code/widget/appbar.dart';


class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Scaffold(
      body: Container(
        color: appColors.backgroundColor,
        child: Column(
          children: [
           Appbar(),
            SizedBox(
              height: 75,
            ),
            Container(
              width: 274,
              height: 18,
              child: Text("Code has been sent to (+1)***_***_*529 "),
            ),
            SizedBox(
              height: 35,
            ),
            CodeInputScreen(),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 134,
              height: 21,
              child: Row(
                children: [
                  Text("Resent Code in "),
                  Text(
                    "59",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text("s")
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                width: 350,
                height: 60,
                child: TextButton(
                  onPressed: () {},
                  child: SliderWithCircleAvatar(),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            Numberpad(),
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
