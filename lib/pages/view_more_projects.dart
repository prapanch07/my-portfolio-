import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ViewMoreProjectsWidget extends StatefulWidget {
  
  const ViewMoreProjectsWidget({
    super.key,
  });

  @override 
  State<ViewMoreProjectsWidget> createState() => _ViewProjectsWidgetState();
}

class _ViewProjectsWidgetState extends State<ViewMoreProjectsWidget> {
  bool ishovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          ishovering = true;
        });
      },
      onExit: (event) {
        setState(() {
          ishovering = false;
        });
      },
      child: InkWell(
        mouseCursor: MaterialStateMouseCursor.clickable,
        onTap: () => launchUrlString(links[8]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_forward_ios,
              color: violetcolor.withOpacity(
                ishovering ? 1 : 0.5,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'view more projects',
              style: GoogleFonts.raleway(
                color: violetcolor.withOpacity(
                  ishovering ? 1 : 0.5,
                ),
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
