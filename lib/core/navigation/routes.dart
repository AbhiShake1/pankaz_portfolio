import 'package:flutter/material.dart';

import '../../feature/home/views/home_page.dart';

const homePageRoute = 'home/';

Route onGenerateRoute(RouteSettings settings) {
  return MaterialPageRoute(
    builder: (context) {
      final args = settings.arguments;
      switch (settings.name) {
        case homePageRoute:
        default:
          return const HomePage();
      }
    },
    settings: settings,
  );
}
