import 'package:flutter/material.dart';
import '../../../size_config.dart';
// Components
import './search_field.dart';
import './icon_btn_circle.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenHeight(7),
      ),
      // Top NavBar
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Search TextField
          SearchField(),
          // Cart Button
          IconBtnCircle(
            icon: 'assets/icons/Cart Icon.svg',
            press: () {
              // Navigate to Cart Screen
              // Navigator.pushNamed(context, CartScreen.route);
            },
          ),
        ],
      ),
    );
  }
}
