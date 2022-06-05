import 'package:ecommerce_apps/model/theme.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: backgroundColor1,
          centerTitle: true,
          title: Text('Your Cart'),
        ),
      );
    }

    Widget empty() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/Cart icon.png',
              width: 80,
              height: 69,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Opss! Your Cart is Empty',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Let's find your favorite shoes",
            style: subTitleTextStyle,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 44,
            width: 152,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget cardProduct() {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 16,
        ),
        margin: EdgeInsets.only(
          top: defaulidMargin,
          right: defaulidMargin,
          left: defaulidMargin,
        ),
        height: 110,
        width: 315,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: backgroundColor4,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images_shoes.png',
                    width: 60,
                    height: 60,
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
                      Text(
                        'Terrex Urban Low',
                        style: primaryTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        '\$143,98',
                        style: priceTextStyle,
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/bottton_add.png',
                      width: 16,
                      height: 16,
                      fit: BoxFit.cover,
                    ),
                    Container(
                        margin: EdgeInsets.all(2),
                        child: Text(
                          '2',
                          style: primaryTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        )),
                    Image.asset(
                      'assets/botton_min.png',
                      width: 16,
                      height: 16,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/remove_icon.png',
                  width: 10,
                  height: 12,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Remove',
                  style: removeProductTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 12,
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [
          cardProduct(),
          cardProduct(),
          cardProduct(),
        ],
      );
    }

    Widget costomButtonNav() {
      return Container(
        margin: EdgeInsets.all(
          defaulidMargin,
        ),
        height: 162,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: primaryTextStyle,
                ),
                Text(
                  '\$287,96',
                  style: priceTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: defaulidMargin,
                bottom: defaulidMargin,
              ),
              child: Divider(
                thickness: 1,
                color: Color(0xff2B2938),
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/checkout-page'),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                height: 50,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue to Checkout',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_rounded,
                      size: 11 * 2,
                      color: primaryTextColor,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
      bottomNavigationBar: costomButtonNav(),
    );
  }
}
