import 'package:flutter/material.dart';
import 'package:plant_app/Screens/Details/detailScreen.dart';
import 'package:plant_app/constants.dart';

class RecomendedPlants extends StatelessWidget {
  const RecomendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ReccomendPlantCard(
            image: 'assets/images/image_1.png',
            name: 'Cavin',
            country: 'India',
            price: 150,
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                ),
              );
            },
          ),
          ReccomendPlantCard(
            image: 'assets/images/image_2.png',
            name: 'Camy',
            country: 'India',
            price: 150,
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                ),
              );
            },
          ),
          ReccomendPlantCard(
            image: 'assets/images/image_3.png',
            name: 'Appu',
            country: 'India',
            price: 150,
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ReccomendPlantCard extends StatelessWidget {
  const ReccomendPlantCard({
    Key? key,
    required this.image,
    required this.name,
    required this.country,
    required this.price,
    required this.ontap,
  }) : super(key: key);

  final String image, name, country;
  final double price;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.only(
          top: kdefaultPadding / 2,
          bottom: kdefaultPadding * 2.5,
          left: kdefaultPadding,
        ),
        width: size.width * 0.4,
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: const EdgeInsets.all(kdefaultPadding),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kprimaryColor.withOpacity(0.23),
                    ),
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$name\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                            text: '$country'.toUpperCase(),
                            style: TextStyle(
                              color: kprimaryColor.withOpacity(0.5),
                            )),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kprimaryColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
