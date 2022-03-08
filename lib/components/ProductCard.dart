import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/product.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, this.itemIndex,  this.product,  this.press,
  }) : super(key: key);
  final int? itemIndex;
  final Product? product;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 160,
         decoration: BoxDecoration(color: Colors.red),
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: 6),
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 135,
              decoration: BoxDecoration(
                  boxShadow: [kDefaultShadow],
                  borderRadius: BorderRadius.circular(22),
                  color: itemIndex!.isEven ? kBlueColor: kSecondaryColor),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(22)),
              ),
            ),
            Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 160,
                  width: 200,
                  child: Image.asset(
                   product!.image,
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  height: 135,
                  width: size.width - 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        child: Text(
                          product!.title,
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding *1.5,
                            vertical: kDefaultPadding /4
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(22),
                                topRight: Radius.circular(22)
                            ),
                            color: kSecondaryColor
                        ),
                        child: Text('\$${product!.price}'),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
