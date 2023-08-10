import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyding_assignment/utils/colors.dart';
import 'package:hyding_assignment/widget/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mobileController = TextEditingController();
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    bool isChecked = false;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: h * 0.5,
              width: h * 0.5,
              child: Padding(
                padding: const EdgeInsets.only(top: 26),
                child: Image.asset(
                  "assets/images/login_image.png",
                  scale: 0.9,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21, bottom: 20),
              child: Text(
                "Welcome",
                style: GoogleFonts.poppins(
                    fontSize: 28, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21),
              child: Text(
                "Mobile number",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21, top: 5),
              child: Row(
                children: [
                  Container(
                    height: h / 18,
                    width: w * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: containerBorder),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "+91",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: textcolor),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          size: 24,
                          color: arrowColor,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: w / 40,
                  ),
                  SizedBox(
                    width: w * 0.7,
                    height: h / 18,
                    child: TextField(
                      controller: mobileController,
                      decoration: InputDecoration(
                        focusColor: bgcolor,
                        hintText: "Enter here",
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: textcolor),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: containerBorder),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 55, right: 53, top: 70, bottom: 17),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {},
                    side: const BorderSide(color: textcolor),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "I agree to the ",
                      style: GoogleFonts.poppins(
                          color: textcolor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                          text: "Terms & Conditions ",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: richTextColor),
                        ),
                        TextSpan(
                          text: "and\n",
                          style: GoogleFonts.poppins(
                              color: textcolor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: "Privacy Statement ",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: richTextColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              text: "Get Otp",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
              color: bgcolor,
            ),
          ],
        ),
      ),
    );
  }
}
