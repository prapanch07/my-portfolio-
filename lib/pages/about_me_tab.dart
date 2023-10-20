import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';

class AboutMeScreenTab extends StatelessWidget {
  const AboutMeScreenTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.sizeOf(context);
    return Container(
      width: screensize.width,
      height: screensize.width / 4 + 100,
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
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: whitecolor,
              ),
            ),
            const SizedBox( 
              height: 10,
            ),
            // 700 // 500
            Text(
              'As a junior-year computer science and engineering student with a passion for programming,',
              style: GoogleFonts.raleway(
                color: whitecolor, 
                fontSize: 16,
              ),
            ),

            Text(
              'I am always seeking new opportunities to hone my skills and gain real-world experience.',
              style: GoogleFonts.raleway(
                color: whitecolor,
                fontSize: 16,
              ),
            ),

            Text(
              'With a strong foundation in programming fundamentals and expertise in Flutter,I am',
              style: GoogleFonts.raleway(
                color: whitecolor,
                fontSize: 16,
              ),
            ),
            Text(
              'eager to explore innovative solutions and contribute to the tech industry.',
              style: GoogleFonts.raleway(
                color: whitecolor,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
