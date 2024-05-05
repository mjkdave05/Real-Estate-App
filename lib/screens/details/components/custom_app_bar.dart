import 'package:majek_real_estate_project/screens/widgets/styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding,
        right: appPadding,
        top: appPadding,
      ),
      child: SizedBox(
        height: size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFEDEDEF),
                  //border: Border.all(color: darkBlue),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 22,
                ),
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
               color: const Color(0xFFEDEDEF),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.thumb_up_alt_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
