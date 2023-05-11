import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsivity_app/pages/home/home_page.dart';

void main() {
  runApp(DevicePreview(
    builder: (_) => const MyApp(),
    enabled: true,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App Responsivo',
        debugShowCheckedModeBanner: false,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        home: const HomePage());
  }
}
