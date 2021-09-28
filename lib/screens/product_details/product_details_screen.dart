import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pharma_app/size_config.dart';
import '../../models/Product.dart';
// RoundedIconBtn Component
import '../../components/rounded_icon_btn.dart';

class ProductDetailsScreen extends StatelessWidget {
  static String route = '/product_details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: RoundedIconBtn(
          iconData: Icons.arrow_back_ios,
          press: () => Navigator.pop(context),
        ),
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
