import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';


class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,  this.onChanged,
  }) : super(key: key);
  final ValueChanged? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding /4
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white.withOpacity(0.4)
      ),
      child:  TextField(
        onChanged: onChanged,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            icon: SvgPicture.asset('assets/icons/search.svg'),
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.white)
        ),
      ),
    );
  }
}
