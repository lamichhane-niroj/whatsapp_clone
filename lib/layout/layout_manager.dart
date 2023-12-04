import 'package:flutter/material.dart';

class LayoutManager extends StatelessWidget {
  const LayoutManager(
      {super.key,
      required this.mobileScreenBuilder,
      required this.webScreenBuilder});

  final Widget mobileScreenBuilder, webScreenBuilder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return webScreenBuilder;
        }
        return mobileScreenBuilder;
      },
    );
  }
}
