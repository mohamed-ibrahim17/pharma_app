import 'package:flutter/material.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';
// Section Title
import './section_title.dart';
// Product Card
import './product_card.dart';
// Product Details Screen
import '../../../screens/product_details/product_details_screen.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Section Title
      SectionTitle(title: 'Popular Products', press: () {}),
      SizedBox(height: getProportionateScreenWidth(20)),
      // Products
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(
              demoProducts.length,
              (index) => ProductCard(
                product: demoProducts[index],
                press: () => Navigator.pushNamed(
                  context,
                  ProductDetailsScreen.route,
                  arguments: ProductDetailsArguments(
                    product: demoProducts[index],
                  ),
                ),
              ),
            ),
            SizedBox(width: getProportionateScreenWidth(20)),
          ],
        ),
      ),
    ]);
  }
}