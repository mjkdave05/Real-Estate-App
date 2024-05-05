import 'package:flutter/material.dart';

class CarouselImages extends StatefulWidget {
  final List<String> imagesListUrl;

  const CarouselImages(this.imagesListUrl, {super.key});

  @override
  _CarouselImagesState createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<AssetImage> imageWidgets =
    widget.imagesListUrl.take(6).map((imageUrl) {
      return AssetImage(imageUrl);
    }).toList();

    return SizedBox(
      height: size.height * 0.35,
      child: Carousel(
        dotSize: 5,
        dotBgColor: Colors.transparent,
        dotColor: Colors.white,
        dotIncreasedColor: Colors.blue,
        autoplay: true,
        images: imageWidgets,
      ),
    );
  }
}

Carousel({required int dotSize, required Color dotBgColor,
  required Color dotColor, required MaterialColor dotIncreasedColor,
  required bool autoplay, required List<AssetImage> images}) {
}
