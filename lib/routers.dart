import 'package:flutter/material.dart';

// NAVIGATION BETWEEN ACTIVITIES
Map<String, WidgetBuilder> getApplicationRoutes() => <String, WidgetBuilder>{
      "intro1": (BuildContext context) => SplashScreen(),
    };
