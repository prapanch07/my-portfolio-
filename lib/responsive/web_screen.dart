import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/about_me_tab.dart';

import 'package:portfolio/pages/about_me_web.dart';
import 'package:portfolio/pages/custom_app_bar.dart';
import 'package:portfolio/pages/first_section.dart';
import 'package:portfolio/pages/footer_section.dart';
import 'package:portfolio/pages/skill_part.dart';
import 'package:portfolio/pages/start_a_section.dart';
import 'package:portfolio/pages/view_more_projects.dart';
import 'package:portfolio/pages/view_work_details.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/custom_tab_appbar.dart';
import 'package:portfolio/widgets/customized_portfolio_contents.dart';
import 'package:url_launcher/url_launcher_string.dart';

class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({super.key});

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
} 

class _WebScreenLayoutState extends State<WebScreenLayout> {
  bool ishovering = false;

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: whitecolor,
      body: ListView(
        children: [
          screensize.width < webwidth
              ? const CustomTabAppBar() 
              : Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 30.0,
                    horizontal: screensize.width / 7,
                  ),
                  child: const CustomAppBar(),
                ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screensize.width / 20,
              vertical: 80,
            ),
            child: const ScreenFirstSection(),
          ),
          const SizedBox(
            height: 50,
          ),

          // test 1

          //\n test1
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10), 
            child: Image(
              height: screensize.width / 5,
              width: screensize.width / 2,
              image: const NetworkImage(computerset),
            ), 
          ),
          Stack(
            children: [
              screensize.width < webwidth && screensize.width > mobilewidth
                  ? const AboutMeScreenTab()
                  : const AboutMeScreenWeb(),
              Padding(
                padding:
                    EdgeInsets.only(top: screensize.width / 4 + 100, bottom: 0),
                child: Container(
                  height: 650,
                  decoration: const BoxDecoration(
                    color: whitecolor,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screensize.width / 4),
                child: const Center(
                  child: SkillPartSection(),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                color: whitecolor,
                height: 1000,
                child: Column(
                  children: [
                    Text(
                      'My Works',
                      style: GoogleFonts.raleway(
                        fontSize: screensize.width < webwidth &&
                                screensize.width > mobilewidth
                            ? 30
                            : 35,
                        fontWeight: FontWeight.bold,
                        color: blackcolor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 70,
                      ),
                      child: Container(
                        color: whitecolor,
                        // height: 800,

                        // checkk
                        width: screensize.width > mobilewidth &&
                                screensize.width < webwidth
                            ? 700
                            : 1100,
                        child: GridView(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 100,
                          ),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: screensize.width > mobilewidth &&
                                    screensize.width < webwidth
                                ? 2
                                : 3,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                          ),
                          children: [
                            CustomizedPortfolioContents(
                              function: () => launchUrlString(links[0]),
                              zoomfunction: () => showDialog(
                                context: context,
                                builder: (context) => const SimpleDialog(
                                  backgroundColor: Color.fromARGB(
                                    0,
                                    0,
                                    183,
                                    255,
                                  ),
                                  children: [
                                    ViewWorkDetails(
                                      images: [
                                        instaclone,
                                        instahome,
                                        instastory,
                                        instapostview,
                                        instacommentpost,
                                        instastoryview
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              name: 'InstaClone',
                              image: phoneframe1,
                              imageonHover: phoneframe1onhover,
                            ),
                            CustomizedPortfolioContents(
                              function: () => launchUrlString(links[1]),
                              zoomfunction: () => showDialog(
                                context: context,
                                builder: (context) => const SimpleDialog(
                                  backgroundColor: Color.fromARGB(
                                    0,
                                    0,
                                    183,
                                    255,
                                  ),
                                  children: [
                                    ViewWorkDetails(
                                      images: [
                                        noteapp,
                                        noteappadd,
                                        noteapplogin,
                                        noteappsignup,
                                        noteapp,
                                        noteappadd,
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              name: 'Note App',
                              image: phoneframe2,
                              imageonHover: phoneframe2onhover,
                            ),
                            CustomizedPortfolioContents(
                              function: () => launchUrlString(links[2]),
                              zoomfunction: () => showDialog(
                                context: context,
                                builder: (context) => const SimpleDialog(
                                  backgroundColor: Color.fromARGB(
                                    0,
                                    0,
                                    183,
                                    255,
                                  ),
                                  children: [
                                    ViewWorkDetails(
                                      images: [
                                        sentimind,
                                        sentimindanalyse,
                                        sentimindemptyvalue,
                                        sentimindfront,
                                        sentimindpositive,
                                        sentimindnegative
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              name: 'Sentimind',
                              image: phoneframe3,
                              imageonHover: phoneframe3onhover,
                            ),
                            CustomizedPortfolioContents(
                              function: () => launchUrlString(links[3]),
                              zoomfunction: () => showDialog(
                                context: context,
                                builder: (context) => const SimpleDialog(
                                  backgroundColor: Color.fromARGB(
                                    0,
                                    0,
                                    183,
                                    255,
                                  ),
                                  children: [
                                    ViewWorkDetails(
                                      images: [
                                        bmicalculator,
                                        bmicalculatorhome,
                                        bmicalculatoradd,
                                        bmicalculatorobese,
                                        bmicalculatorlowweight,
                                        bmicalculatoroverweight
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              name: 'BMI Calculator',
                              image: phoneframe4,
                              imageonHover: phoneframe4onhover,
                            ),
                            CustomizedPortfolioContents(
                              function: () => launchUrlString(links[4]),
                              zoomfunction: () => showDialog(
                                context: context,
                                builder: (context) => const SimpleDialog(
                                  backgroundColor: Color.fromARGB(
                                    0,
                                    0,
                                    183,
                                    255,
                                  ),
                                  children: [
                                    ViewWorkDetails(
                                      images: [
                                        maniguru,
                                        maniguruaddcategory,
                                        maniguruaddtransaction,
                                        maniguruexpense,
                                        maniguruincome,
                                        maniguru
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              name: 'Maniguru',
                              image: phoneframe5,
                              imageonHover: phoneframe5onhover,
                            ),

                            const ViewMoreProjectsWidget()

                            // extract mouse region and addd grid change xoom  etxt
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 1000),
                child: FooterSection(),
              ),
              const StartAProjectSection()
            ],
          ),
        ],
      ),
    );
  }
}
