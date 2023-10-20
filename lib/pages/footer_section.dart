import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/custom_icons.dart';
import 'package:url_launcher/url_launcher_string.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: violetcolor,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 100,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                '      While(alive):\n\t       eat(),\n\t       sleep(),\n\t       coffeeLoader(),\n\t       code(),\n\t       Repeat()',
                style: GoogleFonts.raleway(
                  letterSpacing: 3,
                  wordSpacing: 3,
                  // footer text color
                  color: greywhitecolor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    icon: 'assets/mail.png',
                    hovericon: 'assets/mailonhover.png',
                    function: () => launchUrlString(gmailurl),
                  ),
                  CustomIconButton(
                    icon: 'assets/github.png',
                    hovericon: 'assets/githubonhover.png',
                    function: () => launchUrlString(githuburl),
                  ),
                  CustomIconButton(
                    icon: 'assets/linkedin.png',
                    hovericon: 'assets/linkedinonhover.png',
                    function: () => launchUrlString(linkdinurl),
                  ),
                  CustomIconButton(
                    icon: 'assets/twitter.png',
                    hovericon: 'assets/twitteronhover.png',
                    function: () => launchUrlString(twitterurl),
                  ),
                  CustomIconButton(
                    icon: 'assets/whtsapp.png',
                    hovericon: 'assets/whtsapponhover.png',
                    function: () => launchUrlString(whatsapurl),
                  ),
                  CustomIconButton(
                    icon: 'assets/instagram.png',
                    hovericon: 'assets/instagramonhover.png',
                    function: () => launchUrlString(instaurl),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Developed in Flutter',
                  style: GoogleFonts.sacramento(
                    color: greywhitecolor,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'J Prapanch 	',
                  style: GoogleFonts.sacramento(
                    color: greywhitecolor,
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
