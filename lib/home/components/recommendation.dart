import 'package:flutter/material.dart';
import 'package:majek_real_estate_project/home/components/houses.dart';

class RecommendationList extends StatefulWidget {

  const RecommendationList(Strings, {super.key, this.title, required this.items, required Text child});

  final String? title;
  final List<Item> items;

  @override
  State<RecommendationList> createState() => _RecommendationListState();
}

class Item {
}

class _RecommendationListState extends State<RecommendationList> {
  @override
  Widget build(BuildContext context) {
     return Column(
       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text(
               widget.title!,
               style: const TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 18.0,
               ),
             ),
             TextButton(onPressed: () {}, child: const Text("See All"))
           ],
         ),
         const SizedBox(height: 12.0),

         // SizedBox(
         //   height: 340.0,
         //   width: double.infinity,
         //   child: ListView.builder(
         //     scrollDirection:Axis.horizontal,
         //     itemCount: widget.items.length,
         //     itemBuilder: (context, index) =>
         //         Houses(widget.items[index], () {}),
         //   ),
         // ),
       ],
     );
  }
}

