class House {
  String imageUrl = 'https://i.ibb.co/7J2L2jY/house1.jpg';
  String address;
  String description;
  double price;
  int bedRooms;
  int bathRooms;
  double sqFeet;
  int garages;
  int time;
  List<String> moreImagesUrl;
  bool isFav;

  House({
    required this.imageUrl,
    required this.address,
    required this.description,
    required this.price,
    required this.bathRooms,
    required this.bedRooms,
    required this.sqFeet,
    required this.garages,
    required this.time,
    required this.moreImagesUrl,
    required this.isFav,
  });
}
