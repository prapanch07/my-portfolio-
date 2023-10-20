import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  final String icon;
  final String hovericon;
  final VoidCallback function;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.hovericon,
    required this.function,
  });

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  bool iconhovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          iconhovering = true;
        });
      },  
      onExit: (event) {
        setState(() {
          iconhovering = false;
        });
      }, 
      child: IconButton(
        onPressed: widget.function  ,
        icon: Image(
          height: 40,
          width: 40,
          image: NetworkImage(
            iconhovering ? widget.hovericon : widget.icon,
          ),
        ),
      ),
    );
  }
}
