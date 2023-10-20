import 'package:flutter/material.dart';

import 'package:portfolio/responsive/web_screen.dart';

class TabletScreenView extends StatefulWidget {
  const TabletScreenView({super.key});

  @override
  State<TabletScreenView> createState() => _TabletScreenViewState();
}

class _TabletScreenViewState extends State<TabletScreenView> {
  @override
  Widget build(BuildContext context) {
    return const WebScreenLayout();
  } 
}
