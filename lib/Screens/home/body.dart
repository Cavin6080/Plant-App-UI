import 'package:flutter/material.dart';
import 'package:plant_app/HomeComponents/featuredPlants.dart';
import 'package:plant_app/HomeComponents/header_with_search_box.dart';
import 'package:plant_app/HomeComponents/recomendedplants.dart';
import 'package:plant_app/HomeComponents/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final String text;
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recomended', onpress: () {}),
          const RecomendedPlants(),
          TitleWithMoreBtn(title: 'Featured Plants', onpress: () {}),
          const FeaturedPlantsCard(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
