import 'package:flutter/material.dart';
import 'package:service_provider/common/app_colors.dart';
import 'package:service_provider/common/theme.dart';
import 'package:slide_to_act/slide_to_act.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  AppColors appColors = AppColors();
  final _formkey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Text("FORGOT PASSWORD"),
        leading: Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(color: appColors.appGreyColor),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                  ))),
        ),
      ),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.3,),
              Center(
                child: Container(
                    height: 44,
                    width: 340,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent)),
                    child: Text(
                      "Enter your registered email or phone number to receive a OTP to reset your password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.25,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: appColors.appGreyColor),
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              customTextField(
                  imagePath: 'assets/images/email_icon.png',
                  labelText: "Email",
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController),
              SizedBox(
                height: 18,
              ),
              customTextField(
                  imagePath: 'assets/images/phone_logo.png',
                  labelText: "Phone Number",
                  keyboardType: TextInputType.phone,
                  controller: _phoneController),
                  SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34.0, right: 34.0),
                child: SlideAction(
              outerColor: appColors.appBarColor,
              borderRadius: 30,
              innerColor: appColors.appWhiteColor,
              sliderButtonIcon: const Icon(Icons.arrow_forward),
              text: "Continue",
              onSubmit: () {
              },
            ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget customTextField({
  required String imagePath,
  required String labelText,
  required TextEditingController controller,
  required TextInputType keyboardType,
  String Function(String?)? validator,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 34.0, right: 34.0),
    child: TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIconConstraints: BoxConstraints(minWidth: 25, minHeight: 25),
        contentPadding: EdgeInsets.all(20.0),
        labelText: labelText,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 10.0),
          child: Image.asset(
            height: 18.98,
            width: 14.5,
            imagePath,
          ),
        ),
      ),
    ),
  );
}
