import 'package:flutter/material.dart';

import '../model/tourism_place.dart';
import '../widgets/detail_screen_layout.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');


class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
      },
    );
  }
}