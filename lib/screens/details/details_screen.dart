import 'package:flutter/material.dart';
import 'package:majek_real_estate_project/home/model/house.dart';
import 'package:majek_real_estate_project/screens/details/components/buttom_buttons.dart';
import 'package:majek_real_estate_project/screens/details/components/carousel_images.dart';
import 'package:majek_real_estate_project/screens/details/components/custom_app_bar.dart';
import 'package:majek_real_estate_project/screens/details/components/house_details.dart';

class DetailsScreen extends StatefulWidget {
  final House house;

  const DetailsScreen({Key? key, required this.house}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CarouselImages(widget.house.moreImagesUrl),
              const CustomAppBar(),
            ],
          ),
          HouseDetails(widget.house),
          const BottomButtons(),
        ],
      ),
    );
  }
}
