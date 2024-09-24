import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/color_utils.dart';


class reusableTextField extends StatelessWidget {
  final String text;
  final IconData? icon;
  final IconData? icons;
  // ImageProvider<Object>? image;
  final bool isPasswordType;
  final TextEditingController controller;
  const reusableTextField({
    super.key,
    required this.text,
    this.icon,
    this.icons,
    required this.isPasswordType,
    required this.controller

  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPasswordType,
      style: GoogleFonts.montserrat(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: appTheme.white),
      cursorColor: appTheme.white,
      decoration: InputDecoration(

          filled: true,
          fillColor: appTheme.black,
          prefixIcon: Icon(icons,
            color: appTheme.white,
            size: 27,),
          hintText: text,
          hintStyle:GoogleFonts.montserrat(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: appTheme.white),
          suffixIcon:   Icon(icon,
            color: appTheme.white,
            size: 36,),
          // ImageIcon(image),

          border: OutlineInputBorder(borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)
          )
      ),
      keyboardType: isPasswordType? TextInputType.visiblePassword : TextInputType.emailAddress,
    );
  }
}
