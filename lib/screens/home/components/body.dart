import 'package:flutter/material.dart';
import '../../../size_config.dart';
// Header
import './header.dart';
// Categories
import './categories.dart';
// Special Offers
import './special_offers.dart';
// Popular Products
import './popular_products.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Top Header
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(20)),
            // Sale
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                color: Color(0xFF4A3298),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            // Categories
            Categories(),
            SizedBox(height: getProportionateScreenWidth(20)),
            // Special Offers
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(20)),
            // Popular Product
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(20)),
          ],
        ),
      ),
    );
  }
}

