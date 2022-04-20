import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/HomeComponents/mybottomnavaigationbar.dart';
import 'package:plant_app/Screens/home/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Body(),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
