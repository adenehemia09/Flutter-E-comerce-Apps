import 'package:ecommerce_apps/model/theme.dart';
import 'package:flutter/material.dart';

class ProductsCart extends StatelessWidget {
  const ProductsCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/product'),
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(right: defaulidMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffECEDEF),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Image?.asset(
              'assets/images_shoes.png',
              width: 215,
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      'Hiking',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 6),
                    child: Text(
                      'COURT VISION 2.0 COURT VISION 2.0',
                      style: titleProductsColorsTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 6),
                    child: Text(
                      '\$ 58,45',
                      style: priceTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
