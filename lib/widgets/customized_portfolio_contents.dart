import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';

class CustomizedPortfolioContents extends StatefulWidget {
  final String image;
  final String imageonHover;
  final String name;
  final VoidCallback zoomfunction;
  final VoidCallback function;
  const CustomizedPortfolioContents({
    super.key,
    required this.image,
    required this.imageonHover,
    required this.name,
    required this.zoomfunction,
    required this.function,
  });

  @override
  State<CustomizedPortfolioContents> createState() =>
      _CustomizedPortfolioContentsState();
}

class _CustomizedPortfolioContentsState
    extends State<CustomizedPortfolioContents> {
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
      child: ishovering == false
          ? Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.image),
                ),
              ),
            )
          : Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      widget.imageonHover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 40,
                    ),
                    child: Row(
                      children: [
                        Text(
                          widget.name,
                          style: GoogleFonts.raleway(
                            color: whitecolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        IconButton(
                          onPressed: widget.zoomfunction,
                          icon: const Icon(
                            Icons.zoom_in,
                            color: Colors.yellow,
                            size: 25,
                          ),
                        ),
                        IconButton(
                          onPressed: widget.function,
                          icon: const Image(
                            height: 25,
                            width: 25,
                            fit: BoxFit.cover,
                            color: Colors.yellowAccent,
                            image: NetworkImage(
                              linkicon,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
