import 'package:flutter/material.dart';
import 'package:responsivity_app/breakpoints.dart';
import 'package:responsivity_app/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:responsivity_app/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:responsivity_app/pages/home/widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth < mobileBreakpoint
            ? const PreferredSize(
                preferredSize: Size(double.infinity, 56),
                child: MobileAppBar(),
              )
            : const PreferredSize(
                preferredSize: Size(double.infinity, 72), child: WebAppBar()),
        drawer: constraints.maxWidth < mobileBreakpoint ? const Drawer() : null,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: const [TopSection()],
              )),
        ),
      );
    });
  }
}
