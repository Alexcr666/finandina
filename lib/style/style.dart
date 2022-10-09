import 'package:finandina/app/app_colors.dart';
import 'package:flutter/material.dart';

class AppStyle {
  styleText(double size, var color, bool bold, {bool? bold2}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: bold2 == true
          ? FontWeight.bold
          : bold != true
              ? FontWeight.normal
              : FontWeight.bold,
    );
  }
}

degradeBackground() {
  return BoxDecoration(
    gradient: LinearGradient(colors: [
      AppColors.gradient1,
      AppColors.gradient2,
    ], begin: Alignment(-1.0, -1), end: Alignment(-1.0, 1), tileMode: TileMode.clamp),
  );
}
