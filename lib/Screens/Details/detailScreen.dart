import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/DetailsComponents/icon_card.dart';
import 'package:plant_app/constants.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: kdefaultPadding * 2),
              child: SizedBox(
                height: size.height * 0.8,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: kdefaultPadding * 3),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                padding: EdgeInsets.symmetric(
                                    horizontal: kdefaultPadding),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: SvgPicture.asset(
                                    'assets/icons/back_arrow.svg'),
                              ),
                            ),
                            Spacer(),
                            IconCard(imagepath: "assets/icons/sun.svg"),
                            IconCard(imagepath: "assets/icons/icon_2.svg"),
                            IconCard(imagepath: "assets/icons/icon_3.svg"),
                            IconCard(imagepath: "assets/icons/icon_4.svg"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.8,
                      width: size.width * 0.75,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          alignment: Alignment.centerLeft,
                          image: AssetImage('assets/images/img.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(63),
                          bottomLeft: Radius.circular(63),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 10),
                            blurRadius: 60,
                            color: kprimaryColor.withOpacity(0.29),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TitleAndPrice(title: 'Angelica', country: 'India', price: 499),
            SizedBox(
              height: kdefaultPadding,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width / 2,
                  height: 75,
                  child: TextButton(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kprimaryColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Description',
                          style: TextStyle(color: Colors.black),
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String title, country;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$title\n',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: ktextColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: country,
                  style: TextStyle(
                    color: kprimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: kprimaryColor),
          ),
        ],
      ),
    );
  }
}
