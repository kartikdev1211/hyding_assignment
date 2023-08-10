import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyding_assignment/utils/colors.dart';

class DateDetails extends StatelessWidget {
  const DateDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Friday",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: textcolor,
            ),
          ),
          Text(
            "|",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: textcolor,
            ),
          ),
          Text(
            "28/07/23",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: textcolor,
            ),
          ),
          Text(
            "|",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: textcolor,
            ),
          ),
          Text(
            "12:00 PM(L)",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: textcolor,
            ),
          ),
        ],
      ),
    );
  }
}
