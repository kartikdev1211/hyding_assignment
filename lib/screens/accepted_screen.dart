import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyding_assignment/utils/colors.dart';
import 'package:hyding_assignment/widget/detail_container.dart';

class AcceptedScreen extends StatelessWidget {
  const AcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: acceptedBgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: h,
            width: w,
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/accepted_screen_bg.png",
                  scale: 0.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 69),
                          child: Row(
                            children: [
                              Container(
                                height: h / 40,
                                width: w / 30,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(
                                width: w / 40,
                              ),
                              Text(
                                "Its a date!",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: h * 0.3,
                          child: Image.asset("assets/images/userImage.png"),
                        ),
                        Text(
                          "This meeting is Accepted by",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Robaert Fox",
                          style: GoogleFonts.poppins(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "in 1 week 2 days",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: h / 20,
                        ),
                        DetailContainer(h: h, w: w),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
