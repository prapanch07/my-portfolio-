import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/custom_scroll_behavier.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class ViewWorkDetails extends StatefulWidget {
  final List images;
  const ViewWorkDetails({super.key, required this.images});

  @override
  State<ViewWorkDetails> createState() => _ViewWorkDetailsState();
}

class _ViewWorkDetailsState extends State<ViewWorkDetails> {
  late int selectedPage;
  late final PageController _pageController;

  @override
  void initState() {
    selectedPage = 0;
    _pageController = PageController(initialPage: selectedPage);

    super.initState();
  }

  void pageViewFunction(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.sizeOf(context);
    final pageCount = widget.images.length;
    return Center(
      child: Stack(
        children: [
          SizedBox(
            height: screensize.height - 100,
            width: screensize.width,
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        selectedPage = page;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                    scrollBehavior: MyCustomScrollBehavior(),
                    children: [
                      Image(
                        image: NetworkImage(
                          widget.images[0],
                        ),
                      ),
                      Image(
                        image: NetworkImage(
                          widget.images[1],
                        ),
                      ),
                      Image(
                        image: NetworkImage(
                          widget.images[2],
                        ),
                      ),
                      Image(
                        image: NetworkImage(
                          widget.images[3],
                        ),
                      ),
                      Image(
                        image: NetworkImage(
                          widget.images[4],
                        ),
                      ),
                      Image(
                        image: NetworkImage(
                          widget.images[5],
                        ),
                      ),
                    ],
                  ),
                ),
                PageViewDotIndicator(
                  alignment: Alignment.topCenter,
                  currentItem: selectedPage,
                  count: pageCount,
                  unselectedColor: whitecolor,
                  selectedColor: violetcolor,
                  duration: const Duration(milliseconds: 500),
                  boxShape: BoxShape.circle,
                  onItemClicked: (index) {
                    pageViewFunction(index);
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          Positioned(
            top: 400,
            left: 15,
            child: IconButton(
              iconSize: 30,
              color: whitecolor.withOpacity(0.2),
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ),
          Positioned(
            top: 400,
            right: 15,
            child: IconButton(
              iconSize: 30,
              color: whitecolor.withOpacity(0.2),
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 10,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.close_rounded,
                size: 30,
                color: whitecolor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
