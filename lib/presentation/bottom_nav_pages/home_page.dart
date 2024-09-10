import 'package:flutter/material.dart';

import '../widgets/Deals.dart';
import '../widgets/DealsOfTheDay.dart';
import '../widgets/DualCameraPhones.dart';
import '../widgets/FeaturedBrand.dart';
import '../widgets/body_banners.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> topCategoriesOne = [
    {
      "imgName": "1",
    },
    {
      "imgName": "2",
    },
    {
      "imgName": "3",
    },
    {
      "imgName": "4",
    },
    {
      "imgName": "5",
    },
    {
      "imgName": "6",
    },
    {
      "imgName": "7",
    },
    {
      "imgName": "8",
    },
    {
      "imgName": "9",
    },
    {
      "imgName": "10",
    },
  ];
  final List<Map<String, String>> topCategoriesTwo = [
    {
      "imgName": "10",
    },
    {
      "imgName": "9",
    },
    {
      "imgName": "8",
    },
    {
      "imgName": "7",
    },
    {
      "imgName": "6",
    },
    {
      "imgName": "5",
    },
    {
      "imgName": "4",
    },
    {
      "imgName": "3",
    },
    {
      "imgName": "2",
    },
    {
      "imgName": "1",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          StoreTypeBarHeader(),
          SizedBox(
            height: 5,
          ),
          SearchBarHeader(),
          SizedBox(
            height: 5,
          ),
          TopCategoriesOne(
            data: topCategoriesOne,
          ),
          TopCategoriesOne(
            data: topCategoriesTwo,
          ),
          Fourthlist(),
          const SizedBox(
            height: 5,
          ),
          Fifthlist(),
          Sixthlist(),
          const SizedBox(
            height: 15,
          ),
          Seventhlist(),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
