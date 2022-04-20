import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';


class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.imagepath,
  }) : super(key: key);

  final String imagepath;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kdefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kbackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 22,
            color: kprimaryColor.withOpacity(0.22),
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            color: Colors.white,
            blurRadius: 20,
          ),
        ],
      ),
      child: SvgPicture.asset(imagepath),
    );
  }
}
