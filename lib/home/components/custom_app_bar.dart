import 'package:majek_real_estate_project/screens/widgets/colors.dart';
import 'package:majek_real_estate_project/screens/widgets/styles.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  final TextStyle textStyle = const TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: darkBlue,
  );

  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0, top: 60),
      padding: const EdgeInsets.symmetric(horizontal: appPadding / 1.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/pic1.png"),
                  ),
                  SizedBox(width: 10),
                  const Text(
                    "Hello! ",
                  ),
                  Text(
                    "Majek",
                    style: textStyle,
                  )
                ],
              ),
            ],
          ),
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: const Icon(Icons.filter_list_outlined, color: darkBlue, size: 25.0),
          )
        ],
      ),
    );
  }
}
