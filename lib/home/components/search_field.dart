import 'package:majek_real_estate_project/screens/widgets/styles.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appPadding / 1.5),
      child: Material(
        elevation: 2.0,
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
        child: TextFormField(
          style: const TextStyle(color: Colors.black, fontSize: 16.0),
          cursorColor: Colors.grey.shade300,
          decoration: const InputDecoration(
            contentPadding:
            EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
            suffixIcon: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              child: Icon(
                Icons.search,
                color: Colors.black45,
              ),
            ),
            border: InputBorder.none,
            hintText: "Search for House...",
          ),
        ),
      ),
    );
  }
}
