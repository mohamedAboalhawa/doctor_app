import 'package:doctor/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'app_theme.dart';

void main() {
  
  runApp(
    DevicePreview(
      enabled: true, 
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Doctor App',
      theme: AppTheme.light(context),
      home:Splash(), 
    );
  }
}
