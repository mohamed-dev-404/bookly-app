import 'package:bookly/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getAppTheme ()  => ThemeData.dark().copyWith(
  scaffoldBackgroundColor: AppColor.primaryColor,
  textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
);
