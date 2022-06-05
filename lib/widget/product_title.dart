import 'package:ecommerce_apps/model/theme.dart';
import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.only(
        bottom: defaulidMargin,
        left: defaulidMargin,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images_shoes.png',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 11),
                  child: Text(
                    'Football',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 6),
                  child: Text(
                    'Predator 20.3 Firm Ground',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                    //overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 6),
                  child: Text(
                    '\$68,47',
                    style: priceTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
