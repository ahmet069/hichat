import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTitle extends StatelessWidget {
  final String content;
  final double fontSize;
  const MainTitle({
    super.key,
    required this.content,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        content,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
