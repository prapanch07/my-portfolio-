import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';

class SkillPartSection extends StatelessWidget {
  const SkillPartSection({
    super.key,
  });

  @override 
  Widget build(BuildContext context) {
    final screensize = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal:
            screensize.width < webwidth && screensize.width > mobilewidth
                ? 30
                : 0,
        vertical: screensize.width < webwidth && screensize.width > mobilewidth
            ? 30
            : 0,
      ),
      child: Container(
        height: screensize.width < webwidth && screensize.width > mobilewidth
            ? 600
            : 700,
        width: screensize.width < webwidth && screensize.width > mobilewidth
            ? 950
            : 1100,
        decoration: BoxDecoration(
          color: whitecolor,
          border: Border.all(
            width: 0.5,
            color: const Color.fromARGB(255, 126, 122, 122),
          ), 
          borderRadius: BorderRadius.circular(15),
        ),
        child: Image.network(
          screensize.width < webwidth && screensize.width > mobilewidth
              ? 'assets/skill_set_tab.png'
              : 'assets/skill_set.png',
        ),
      ),
    );
  }
}
