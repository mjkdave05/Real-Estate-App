import 'package:majek_real_estate_project/screens/widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:majek_real_estate_project/screens/widgets/colors.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: appPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size.width * 0.4,
            height: 50,
            decoration: BoxDecoration(
                color: darkBlue,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: darkBlue.withOpacity(0.6),
                      offset: const Offset(0, 5),
                      blurRadius: 10)
                ]),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(
                //   (Icons.mail_rounded),
                //   color: white,
                // ),
                Text(
                  ' Message',
                  style: TextStyle(
                    color: white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: size.width * 0.4,
            height: 50,
            decoration: BoxDecoration(
                color: darkBlue,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: darkBlue.withOpacity(0.6),
                      offset: const Offset(0, 5),
                      blurRadius: 10)
                ]),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(
                //   (Icons.call_rounded),
                //   color: white,
                // ),
                Text(
                  ' Book Now',
                  style: TextStyle(
                    color: white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
