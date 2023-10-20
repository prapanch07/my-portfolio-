import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';

class AboutMeScreenmobile extends StatelessWidget {
  const AboutMeScreenmobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.sizeOf(context);
    return Container(
      width: screensize.width,
      height: screensize.width / 4 + 300,
      // 100
      decoration: const BoxDecoration(
        color: violetcolor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 40.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'About Me',
              style: GoogleFonts.raleway(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: whitecolor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // 700 // 500
            Text(
              'As a junior-year computer science and engineering student with a',
              style: GoogleFonts.raleway(
                color: whitecolor,
                fontSize: 15,
              ),
            ),
            //
            Text(
              'passion for programming,I am always seeking new opportunities',
              style: GoogleFonts.raleway(
                color: whitecolor,
                fontSize: 15,
              ),
            ),

            Text(
              ' to hone my skills and gain real-world experience.With a strong',
              style: GoogleFonts.raleway(
                color: whitecolor,
                fontSize: 15,
              ),
            ),

            Text(
              'foundation in programming fundamentals and expertise',
              style: GoogleFonts.raleway(
                color: whitecolor,
                fontSize: 15,
              ),
            ),
            Text(
              'in Flutter,I am eager toexplore innovative solutions and',
              style: GoogleFonts.raleway(
                color: whitecolor,
                fontSize: 15,
              ),
            ),
            Text(
              'contribute to the tech industry.',
              style: GoogleFonts.raleway(
                color: whitecolor,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
