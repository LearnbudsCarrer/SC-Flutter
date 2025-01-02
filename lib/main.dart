import 'package:flutter/material.dart';
import 'package:service_provider/common/theme.dart';
import 'package:service_provider/services/createnewpassword.dart';
import 'package:service_provider/services/splash_screen.dart';

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
      home: CreateNewPasswordScreen(),
    );
  }
}
