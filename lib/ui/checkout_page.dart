import 'package:ecommerce_apps/model/theme.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text('Checkout Details'),
      );
    }

    Widget titleCart(String tittle) {
      return Text(
        tittle,
        style: primaryTextStyle.copyWith(
          fontSize: 16,
          fontWeight: medium,
        ),
      );
    }

    Widget cartCheckout() {
      return Container(
        margin: EdgeInsets.only(top: 12),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        height: 100,
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
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Terrex Urban Low',
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '\$143,98',
                    style: priceTextStyle,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  '2 ',
                  style: subTitleTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                Text(
                  'items',
                  style: subTitleTextStyle.copyWith(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget cartAnddreas() {
      return Container(
        margin: EdgeInsets.only(top: defaulidMargin),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: backgroundColor4,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleCart('Address Details'),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/location_store.png',
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/Line.png',
                      height: 30,
                    ),
                    Image.asset(
                      'assets/icon_addres.png',
                      width: 40,
                    ),
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Store Location',
                              style: subTitleTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: light,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Adidas Core',
                              style: primaryTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: defaulidMargin,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Address',
                              style: subTitleTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: light,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Marsemoon',
                              style: primaryTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget cartPayment() {
      return Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(top: defaulidMargin),
        //height: 198,
        decoration: BoxDecoration(
          color: backgroundColor4,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleCart('Payment Summary'),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product Quantity',
                  style: subTitleTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '2 ',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      'Items',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product Price',
                  style: subTitleTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                Text(
                  '\$575.96',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping',
                  style: subTitleTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Free',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Divider(
              thickness: 1,
              color: Color(0xff2E3141),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: priceTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '\$575.92',
                  style: priceTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: defaulidMargin,
          left: defaulidMargin,
          right: defaulidMargin,
        ),
        child: ListView(
          children: [
            titleCart('List Items'),

            /// Note: ini adalah cart untuk list product
            cartCheckout(),

            /// Note: ini adalah cart untuk anddreas
            cartAnddreas(),

            /// Note: ini adalah cart untuk Payment
            cartPayment(),
          ],
        ),
      );
    }

    Widget botNavCheckOut() {
      return InkWell(
        onTap: () {
          Navigator.pushNamedAndRemoveUntil(
              context, '/checkout-succes', (route) => false);
        },
        child: Container(
          margin: EdgeInsets.all(defaulidMargin),
          height: 50,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              'Checkout Now',
              style: primaryTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
      bottomNavigationBar: botNavCheckOut(),
    );
  }
}
