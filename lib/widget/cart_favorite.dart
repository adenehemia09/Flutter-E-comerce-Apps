import 'package:ecommerce_apps/model/theme.dart';
import 'package:flutter/material.dart';

class FavoriteCart extends StatelessWidget {
  const FavoriteCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 30,
        right: 30,
      ),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images_shoes.png',
              width: 60,
              height: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terrex Urban Low ',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '\$143,98',
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          Image.asset(
            'assets/Love Button.png',
            width: 34,
          )
        ],
      ),
    );
  }
}
