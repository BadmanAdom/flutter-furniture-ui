import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/screen/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: kDefaultPadding), onPressed: () {  }, icon: SvgPicture.asset('assets/icons/back.svg'),
        ),
        centerTitle: false,
        title: Text('Back'.toUpperCase(),style: Theme.of(context).textTheme.bodyText2,),
        actions: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/cart_with_item.svg'))
        ],
      ),
      body: Body(),
    );
  }
}
