import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_task/core/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static TextStyle hintStyle = GoogleFonts.poppins(
    color: AppColors.hintColor,
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  static TextStyle discountStyle = GoogleFonts.poppins(
    color: AppColors.hintColor,
    fontSize: 11,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.lineThrough,
  );

  static TextStyle cardStyle = GoogleFonts.poppins(
    color: AppColors.blackFont,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle reviewStyle = GoogleFonts.poppins(
    color: AppColors.blackFont,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
}
