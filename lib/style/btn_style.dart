import 'package:flutter/material.dart';
import 'package:image_processing/style/app_colors.dart';

class BtnStyle {
  static ButtonStyle primary = ElevatedButton.styleFrom(
    backgroundColor: AppColors.primary,
    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
  );

  static ButtonStyle danger = ElevatedButton.styleFrom(
    backgroundColor: AppColors.danger,
    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
  );

  static ButtonStyle secondary = ElevatedButton.styleFrom(
    backgroundColor: AppColors.secondary,
    foregroundColor: Colors.black54,
  );
}
