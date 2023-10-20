import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/contact_me.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/custom_text_button.dart';

class StartAProjectSection extends StatelessWidget {
  const StartAProjectSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(
        top:
            screensize.width <= mobilewidth ? screensize.width * 5 + 250 : 950, 
        left: 10,
        right: 10,
      ), 
      child: Center(
        child: Container(
          height: screensize.width > mobilewidth && screensize.width < webwidth
              ? 120
              : 150,
          width: screensize.width > mobilewidth && screensize.width < webwidth
              ? 900
              : screensize.width <= mobilewidth
                  ? screensize.width
                  : 1100,
          decoration: BoxDecoration(
            color: bluecontainer,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Start a Project!',
                style: GoogleFonts.martianMono(
                  color: whitecolor,
                  fontSize: screensize.width > mobilewidth &&
                          screensize.width < webwidth
                      ? 18
                      : screensize.width <= mobilewidth
                          ? 16
                          : 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text( 
                screensize.width <= mobilewidth
                    ? "I love engaging with new\nideas from clients,I’d love\nto hear from you. "
                    : "I love engaging with new ideas from clients,\nI’d love to hear from you. ",
                style: GoogleFonts.raleway(
                  color: whitecolor,
                  fontWeight: FontWeight.bold,
                  fontSize: screensize.width > mobilewidth &&
                          screensize.width < webwidth
                      ? 12
                      : screensize.width <= mobilewidth
                          ? 11
                          : null,
                ),
              ),
              screensize.width > mobilewidth && screensize.width < webwidth
                  ? CustomtextButton(
                      function: () {
                        showDialog(
                          context: context,
                          builder: (context) => const SimpleDialog(
                            backgroundColor: Color.fromARGB(0, 0, 183, 255),
                            children: [
                              ContactMe(),
                            ],
                          ),
                        );
                      },
                      height: 45,
                      width: 120,
                      radius: 45,
                      textsize: 13,
                      color: cyanbordercolor,
                      textcolor: whitecolor,
                      text: "🤘 Let's do this",
                      borderthick: 1.5,
                    )
                  : screensize.width <= mobilewidth
                      ? CustomtextButton(
                          function: () {
                            showDialog(
                              context: context,
                              builder: (context) => const SimpleDialog(
                                backgroundColor: Color.fromARGB(0, 0, 183, 255),
                                children: [
                                  ContactMe(),
                                ],
                              ),
                            );
                          },
                          height: 45,
                          width: 130,
                          radius: 45,
                          textsize: 12,
                          color: cyanbordercolor,
                          textcolor: whitecolor,
                          text: "🤘 Let's do this",
                          borderthick: 2,
                        )
                      : CustomtextButton(
                          function: () {
                            showDialog(
                              context: context,
                              builder: (context) => const SimpleDialog(
                                backgroundColor: Color.fromARGB(0, 0, 183, 255),
                                children: [
                                  ContactMe(),
                                ],
                              ),
                            );
                          },
                          height: 50,
                          width: 190,
                          radius: 45,
                          textsize: 15,
                          color: cyanbordercolor,
                          textcolor: whitecolor,
                          text: "🤘 Let's do this",
                          borderthick: 2,
                        )
            ],
          ),
        ),
      ),
    );
  }
}
