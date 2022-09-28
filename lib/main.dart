import 'package:flutter/material.dart';
import '../../Responsive/responsive_layout.dart';
import '../../widgets/colors.dart';
import '../../screens/mobile_screen_layout.dart';
import '../../screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp_Ui',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: ResponsiveLayout(
        mobileScreenLayout: const mobileScreenLayout(),
        webScreenLayout: const webScreenLayout(),
      ),
    );
  }
}
