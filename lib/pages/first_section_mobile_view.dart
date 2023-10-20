import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';

import 'package:portfolio/widgets/custom_text_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ScreenFirstSectionMobileView extends StatefulWidget {
  const ScreenFirstSectionMobileView({
    super.key,
  });

  @override
  State<ScreenFirstSectionMobileView> createState() =>
      _ScreenFirstSectionState();
}

class _ScreenFirstSectionState extends State<ScreenFirstSectionMobileView> {
  bool onhover = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 60,
          backgroundImage: NetworkImage(
            'assets/profile.jpg',
          ),
        ),
        Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hey!,',
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.w500,
                fontSize: 28,
              ),
            ),
            const Image(
              fit: BoxFit.fill,
              height: 38,
              width: 38,
              image: NetworkImage('assets/hi.gif'),
            )
          ],
        ),
        AnimatedTextKit(
          totalRepeatCount: 1,
          animatedTexts: [
            TypewriterAnimatedText(
              "I'm J Prapanch",
              speed: const Duration(milliseconds: 80),
              textStyle: GoogleFonts.raleway(
                fontWeight: FontWeight.w500,
                fontSize: 28,
              ),
            )
          ],
        ),
        SizedBox(
          height: 40,
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText(
                'An Aspiring Engineer',
                speed: const Duration(milliseconds: 80),
                textStyle: GoogleFonts.raleway(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              TypewriterAnimatedText(
                'Freelancer',
                speed: const Duration(milliseconds: 80),
                textStyle: GoogleFonts.raleway(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              TypewriterAnimatedText(
                'Gamer',
                speed: const Duration(milliseconds: 80),
                textStyle: GoogleFonts.raleway(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        MouseRegion(
          onEnter: (event) {
            setState(() {
              onhover = true;
            });
          },
          onExit: (event) {
            setState(() {
              onhover = false;
            });
          },
          child: CustomtextButton(
            function: () => launchUrlString(resumelink),
            height: 40,
            width: 80,
            radius: 10,
            textsize: 14,
            color: cyanbordercolor,
            textcolor: onhover ? cyanbordercolor : violetcolor,
            text: "resume",
            borderthick: 1.5,
            fillcolor: onhover ? violetcolor : Colors.transparent,
          ),
        ),
      ],
    );
  }
}
