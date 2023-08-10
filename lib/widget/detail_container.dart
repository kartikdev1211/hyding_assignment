import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyding_assignment/utils/colors.dart';
import 'package:hyding_assignment/widget/custom_button.dart';
import 'package:hyding_assignment/widget/date_details.dart';
import 'package:hyding_assignment/widget/location_detail.dart';

class DetailContainer extends StatelessWidget {
  const DetailContainer({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h * 0.44,
      width: w,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(19),
          topRight: Radius.circular(19),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                "Meet Details",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: h / 40,
            ),
            Container(
              height: h * 0.15,
              width: w * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: const Column(
                children: [
                  DateDetails(),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Divider(),
                  ),
                  LocationDetail(),
                ],
              ),
            ),
            SizedBox(
              height: h / 30,
            ),
            CustomButton(
              text: "Cancel Meet",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
              color: Colors.white,
            ),
            SizedBox(
              height: h / 40,
            ),
            CustomButton(
              text: "Close",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              color: bgcolor,
            ),
          ],
        ),
      ),
    );
  }
}
