import 'package:flutter/material.dart';
import 'package:service_provider/common/theme.dart';
import 'package:service_provider/features/authentication/screens/Otp_verification.dart';
import 'package:service_provider/features/authentication/screens/Password_Confirm.dart';
import 'package:service_provider/features/authentication/screens/createnewpassword.dart';
import 'package:service_provider/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MC provider',
      theme: darkTheme,
      home: passwordConfirm(),//OTPScreen //passwordConfirm
    );
  }
}
