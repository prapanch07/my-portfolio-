import 'package:flutter/material.dart';
import 'package:portfolio/pages/contact_me.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/custom_text_button.dart';

class CustomTabAppBar extends StatefulWidget {
  const CustomTabAppBar({
    super.key,
  });

  @override
  State<CustomTabAppBar> createState() => _CustomTabAppBarState();
}

class _CustomTabAppBarState extends State<CustomTabAppBar> {
  bool menubuttontapped = false;
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.sizeOf(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 60,
            right: 60,
            bottom: 20,
          ),
          child: SizedBox(
            width: screensize.width,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  fit: BoxFit.cover,
                  height: 40,
                  color: violetcolor,
                  image: NetworkImage(j),
                ),
                Flexible(
                  child: Container(),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      menubuttontapped = !menubuttontapped;
                    });
                  },
                  icon: Icon(
                    menubuttontapped ? Icons.close : Icons.menu,
                    color: violetcolor,
                  ),
                )
              ],
            ),
          ),
        ),
        menubuttontapped
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.dark_mode,
                      size: 30,
                    ),
                  ),
                  CustomtextButton(
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
                    width: 91,
                    radius: 100,
                    textsize: 13,
                    color: violetcolor,
                    textcolor: violetcolor,
                    text: 'Say Hello ',
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              )
            : const SizedBox(),
      ],
    );
  }
}
