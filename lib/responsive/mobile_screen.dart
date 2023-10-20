import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/about_me_mobile.dart';
import 'package:portfolio/pages/first_section_mobile_view.dart';
import 'package:portfolio/pages/footer_section.dart';
import 'package:portfolio/pages/start_a_section.dart';
import 'package:portfolio/pages/view_more_projects.dart';
import 'package:portfolio/pages/view_work_details.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/custom_tab_appbar.dart';
import 'package:portfolio/widgets/customized_portfolio_contents.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  bool ishovering = false;
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.sizeOf(context);

    return Scaffold(
      body: ListView(
        children: [
          const CustomTabAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screensize.width / 20,
              vertical: 80,
            ),
            child: const ScreenFirstSectionMobileView(),
          ),
          Stack(
            children: [
              const AboutMeScreenmobile(),
              Padding(
                padding: EdgeInsets.only(
                  top: screensize.width / 4 + 110,
                  left: 20,
                  right: 20,
                ),
                child: Center(
                  child: Container(
                    height: 1510,
                    width: screensize.width,
                    decoration: BoxDecoration(
                        color: whitecolor,
                        border: Border.all(
                          width: 0.5,
                          color: const Color.fromARGB(255, 126, 122, 122),
                        ),
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: NetworkImage('assets/skill_set_mobile.png'),
                        )),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'My Works',
              textAlign: TextAlign.center,
              style: GoogleFonts.raleway(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: blackcolor,
              ),
            ),
          ),
          Stack(
            children: [
              GridView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 20,
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
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: screensize.width * 5 + 300),
                child: const FooterSection(),
              ),
              const StartAProjectSection()
            ],
          ),
        ],
      ),
    );
  }
}
