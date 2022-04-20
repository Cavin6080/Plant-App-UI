import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class FeaturedPlantsCard extends StatelessWidget {
  const FeaturedPlantsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            imagepath: 'assets/images/bottom_img_1.png',
            ontap: () {},
          ),
          FeaturePlantCard(
            imagepath: 'assets/images/bottom_img_2.png',
            ontap: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key? key,
    required this.imagepath,
    required this.ontap,
  }) : super(key: key);

  final String imagepath;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ontap(),
      child: Container(
        margin: const EdgeInsets.only(
            left: kdefaultPadding,
            top: kdefaultPadding / 2,
            bottom: kdefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imagepath),
          ),
        ),
      ),
    );
  }
}
