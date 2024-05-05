import 'package:majek_real_estate_project/home/components/recommendation.dart';
import 'package:majek_real_estate_project/home/components/search_field.dart';
import 'package:flutter/material.dart';
import 'package:majek_real_estate_project/home/components/categories.dart';
import 'package:majek_real_estate_project/home/components/custom_app_bar.dart';
import 'package:majek_real_estate_project/home/components/houses.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TopSection(),
            SearchField(),
            Categories(),
            Houses(),
          ],
        ),
      ),
    );
  }
}
