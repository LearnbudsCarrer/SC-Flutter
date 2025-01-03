import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:service_provider/common/app_colors.dart';

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
