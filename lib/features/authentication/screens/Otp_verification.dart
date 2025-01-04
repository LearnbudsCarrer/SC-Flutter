import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:service_provider/common/app_colors.dart';

import 'package:service_provider/features/authentication/screens/widgets/_SliderWithCircleAvatarState.dart';
import 'package:service_provider/features/authentication/screens/widgets/appbar.dart';

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
            Appbar(
              AppName: "OTP VERIFICATION",
            ),
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
         SliderWithCircleAvatar(
                SlindeName: "Verify",
              ),
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

class CodeInputScreen extends StatelessWidget {
  
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Container(
      width: 360,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Pinput(
              keyboardType: TextInputType.number,
              length: 4, // Limit input to 4 digits
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the OTP';
                }
                if (value.length != 4) {
                  return 'OTP must be 4 digits';
                }
                return null;
              },
              defaultPinTheme: PinTheme(
                width: 75,
                height: 60,
                textStyle: TextStyle(
                  fontSize: 22,
                  color: Colors.white, // Text color inside input
                ),
                decoration: BoxDecoration(
                  color: appColors.appGreyColor, // Background color of each pin box
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.white, // Border color
                    width: 2,
                  ),
                ),
              ),
              focusedPinTheme: PinTheme(
                width: 80,
                height: 70,
                textStyle: TextStyle(
                  fontSize: 22,
                  color: Colors.white, // Text color when focused
                ),
                decoration: BoxDecoration(
                  color: Colors.black, // Background color when focused
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.blue, // Border color when focused
                    width: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Number Pad
class Numberpad extends StatelessWidget {
  const Numberpad({super.key});

  @override
  Widget build(BuildContext context) {
      num(String num) {
    return Container(
      width: 11,
      height: 23,
      child: Center(
          child: Text(
        num,
        style: TextStyle(fontSize: 20),
      )),
    );
  }
    return  Container(
              height: 267,
              width: 297,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 0, bottom: 5),
                child: GridView.count(
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 4,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: [
                    num('1'),
                    num('2'),
                    num('3'),
                    num('4'),
                    num('5'),
                    num('6'),
                    num('7'),
                    num('8'),
                    num('9'),
                    num('*'),
                    num('0'),
                    Icon(
                      Icons.backspace_outlined,
                      size: 20,
                    )
                  ],
                ),
              ),
            );
  }
}