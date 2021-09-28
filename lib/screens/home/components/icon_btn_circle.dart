import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconBtnCircle extends StatelessWidget {
  const IconBtnCircle({
    Key key,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  final String icon;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        width: getProportionateScreenWidth(46),
        height: getProportionateScreenWidth(46),
        // height: 50,
        decoration: BoxDecoration(
          color: kSecndaryColor.withOpacity(0.1),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
