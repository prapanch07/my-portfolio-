import 'package:flutter/material.dart';
import 'package:portfolio/responsive/mobile_screen.dart';
import 'package:portfolio/responsive/tab_screen.dart';
import 'package:portfolio/responsive/web_screen.dart';
import 'package:portfolio/utils/constants.dart';

class CustomResponsiveWidget extends StatelessWidget {
  const CustomResponsiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webwidth) {
          return const WebScreenLayout(); 
        } else if (constraints.maxWidth > mobilewidth) {
          return const TabletScreenView();
        } else {
          return const MobileScreenLayout();
        }
      },
    );
  }
}
 