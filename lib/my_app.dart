import 'package:flutter/material.dart';

import 'package:sistema_solar/pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  final String _appName = 'Sistema Solar';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appName,
      theme: ThemeData(
        brightness: Brightness.dark,
        cardColor: Colors.black26,
        accentColor: Colors.black87
      ),
      routes: {
        '/': (context) => HomePage( title: _appName ),
      },
    );
  }
}