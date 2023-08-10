import 'package:flutter/material.dart';
import 'package:hyding_assignment/utils/colors.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Location: ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: "Aaha Food Court",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: textcolor,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50),
            child: Icon(
              Icons.arrow_forward_ios,
              color: textcolor,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
