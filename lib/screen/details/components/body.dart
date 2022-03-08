import 'package:flutter/material.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/screen/details/components/ColorDot.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: [
      ProductPoster(size: size, image: 'assets/images/Item_2.png',),
    ]);
  }
}

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key? key,
    required this.size, this.image,
  }) : super(key: key);

  final Size size;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
            height: size.width * 0.8,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: size.width * .7,
                  width: size.width * .7,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                Image.asset(
                  image!,
                  height: size.width * 0.75,
                  width: size.width * 0.75,
                  fit: BoxFit.cover,
                ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ColorDot(
            fillColor: Color(0xFF80989A),
            isSelected: true,
          ),
          ColorDot(
            fillColor: Color(0xFFFF5200),
          ),
          ColorDot(
            fillColor: kPrimaryColor,
          ),
        ],
      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
