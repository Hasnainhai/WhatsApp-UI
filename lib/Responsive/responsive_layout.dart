import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  ResponsiveLayout(
      {required this.mobileScreenLayout, required this.webScreenLayout});
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth > 900) {
          return webScreenLayout;
        }
        return mobileScreenLayout;
      },
    );
  }
}
