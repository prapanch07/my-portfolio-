import 'package:flutter/material.dart';
import 'package:portfolio/pages/contact_me.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/custom_text_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.sizeOf(context);
    return SizedBox(
      width: screensize.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            fit: BoxFit.cover,
            height: 50,
            color: violetcolor,
            image: NetworkImage('assets/J.png'),
          ),
          Flexible(
            child: Container(),
          ),
          IconButton(
            onPressed: () {
              launchUrlString('');
            },
            icon: const Icon(
              Icons.dark_mode,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 10,
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
            height: 75,
            width: 105,
            radius: 1500,
            textsize: 15,
            color: violetcolor,
            textcolor: violetcolor,
            text: 'Say Hello ',
          )
        ],
      ),
    );
  }
}
