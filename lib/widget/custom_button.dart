import 'package:flutter/material.dart';
import 'package:hyding_assignment/screens/accepted_screen.dart';
import 'package:hyding_assignment/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final TextStyle style;
  const CustomButton(
      {super.key,
      required this.text,
      required this.color,
      required this.style});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AcceptedScreen(),
              ),
            );
          },
          child: Container(
            height: h / 18,
            width: w * 0.8,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: textcolor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: style,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
