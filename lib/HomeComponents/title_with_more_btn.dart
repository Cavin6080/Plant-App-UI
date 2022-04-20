import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    required this.title,
    required this.onpress,
  }) : super(key: key);
  final String title;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          const Spacer(),
          TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kprimaryColor),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 20))),
            onPressed: onpress(),
            child: const Text(
              'More',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding:const EdgeInsets.only(left: kdefaultPadding / 4),
            child: Text(
              text,
              style:const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: const EdgeInsets.only(right: kdefaultPadding / 4),
              height: 7,
              color: kprimaryColor.withOpacity(0.3),
            ),
          )
        ],
      ),
    );
  }
}
