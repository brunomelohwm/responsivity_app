import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            height: 400,
            width: 200,
            color: Colors.white,
          );
        },
      ),
    );
  }
}
