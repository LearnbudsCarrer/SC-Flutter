import 'package:flutter/material.dart';
import 'package:service_provider/common/app_colors.dart';

class AppColors {
  static const Color appBarColor = Color(0xFF1D1F2A);
  static const Color backgroundColor = Color(0xFFD9D9DB);
  static const Color appGreyColor = Color(0xFF736A68);
  static const Color appWhiteColor = Colors.white;
  static const Color buttonDarkColor = Color(0xFF4E4E50);
}

class SO1_Launching extends StatefulWidget {
  const SO1_Launching({super.key});

  @override
  State<SO1_Launching> createState() => _SO1_LaunchingState();
}

class _SO1_LaunchingState extends State<SO1_Launching> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1F2A),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/splash_main_logo.png',
                width: 400,
                height: 400,
              ),
            ),
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  _buildLoginButton(
                    text: 'Login with Email/Phone',
                    backgroundColor: AppColors.appWhiteColor,
                    textColor: Colors.black,
                    iconPath: 'assets/images/phone icon.jpeg',
                  ),
                  const SizedBox(height: 15),
                  _buildLoginButton(
                    text: 'Login with Google',
                    backgroundColor: AppColors.buttonDarkColor,
                    textColor: AppColors.appWhiteColor,
                    iconPath: 'assets/images/google_logo.png',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Don't have an account? Sign Up",
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton({
    required String text,
    required Color backgroundColor,
    required Color textColor,
    required String iconPath,
  }) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(iconPath),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(color: textColor, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
