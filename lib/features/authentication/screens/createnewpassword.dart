import 'package:flutter/material.dart';
import 'package:service_provider/common/app_colors.dart';
import 'package:service_provider/splash_screen.dart';
import 'package:slide_to_act/slide_to_act.dart';

class AppColors {
  static const Color appBarColor = Color(0xFF1D1F2A);
  static const Color backgroundColor = Color(0xFFD9D9DB);
  static const Color appGreyColor = Color(0xFF736A68);
  static const Color appWhiteColor = Colors.white;
}

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        elevation: 0,
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.appWhiteColor,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.appBarColor,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        title: const Text(
          'CREATE NEW PASSWORD',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const Text(
              'Add a Pin Number to Make Your Account more Secure',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 40),
            _buildPasswordField('Password'),
            const SizedBox(height: 20),
            _buildPasswordField('Confirm Password'),
            const SizedBox(height: 40),
            SlideAction(
              outerColor: AppColors.appBarColor,
              borderRadius: 30,
              innerColor: AppColors.appWhiteColor,
              sliderButtonIcon: const Icon(Icons.arrow_forward),
              text: "Continue",
              onSubmit: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SO1_Launching();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordField(String hintText) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: AppColors.appGreyColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white),
          icon: const Icon(
            Icons.lock_outline,
            color: Colors.white,
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.visibility_off_outlined,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
