import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/components/category_list.dart';
import 'package:furniture/components/search_box.dart';
import 'package:furniture/constants.dart';

import '../../../components/ProductCard.dart';
import '../../../models/product.dart';
import '../../details/DetailsScreen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SearchBox(onChanged: (value){},),
          CategoryList(),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
              ),
              ListView.builder(itemCount: products.length,itemBuilder: (context,index)=> ProductCard(
                itemIndex: index,
                product: products[index],
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
                },
              ))
            ],
          ))
        ],
      ),
    );
  }
}
