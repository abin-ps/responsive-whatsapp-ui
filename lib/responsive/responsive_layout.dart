import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key, required this.mobileScreenLayout, required this.webScreenLayout});
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1000) {
          //Web Screen layout
          return webScreenLayout;
        }
        //Mobile Screen Layout
        return mobileScreenLayout;
      },
    );
  }
}
