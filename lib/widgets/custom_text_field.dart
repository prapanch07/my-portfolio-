import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hinttext;
  final TextInputType keyboardtype;
  final TextInputAction keyboardaction;
  final int lines;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hinttext,
    required this.keyboardtype,
    required this.keyboardaction,
    required this.lines,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(
        color: whitecolor,
        fontWeight: FontWeight.bold,
      ),
      keyboardType: keyboardtype,
      textInputAction: keyboardaction,
      maxLines: lines,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hinttext,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 179, 177, 177),
        ),
      ),
    );
  }
}


//check resposivnes    if not do check screen size do appropriatly