import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/screen/product/components/body.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: const Body(),
      appBar: buildAppBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      title: Text('DashBoard'),
      centerTitle: false,
      actions: [
        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/notification.svg'))
      ],
    );
  }
}
