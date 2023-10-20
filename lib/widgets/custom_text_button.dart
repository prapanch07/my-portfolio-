

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomtextButton extends StatelessWidget {
  final VoidCallback function;
  final double height;
  final double width;
  final double radius;
  final double textsize;
  final Color color;
  final Color textcolor;
  final String text;
  final borderthick;
  final Color fillcolor;

  const CustomtextButton(
      {super.key,
      required this.function,
      required this.height,
      required this.width,
      required this.radius,
      required this.textsize,
      required this.color,
      required this.textcolor,
      required this.text,
      this.borderthick = 0,
      this.fillcolor = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: fillcolor,
          border: Border.all(
            color: color,
            width: borderthick,
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: Text(text,
              style: GoogleFonts.raleway(
                fontSize: textsize,
                color: textcolor,
                fontWeight: FontWeight.bold,
              )
              // textAlign: TextAlign.center,
              ),
        ),
      ),
    );
  }
}
