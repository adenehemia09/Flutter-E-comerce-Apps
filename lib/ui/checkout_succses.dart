import 'package:ecommerce_apps/model/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutSuccses extends StatelessWidget {
  const CheckoutSuccses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Checkout Success',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 90),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Cart icon.png',
                  height: 80,
                  width: 70,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'You made a transaction',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Stay at home while we prepare your dream shoes',
                  style: subTitleTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: defaulidMargin,
                ),
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: primaryColor,
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/home', (route) => false);
                      },
                      child: Text(
                        'Order Other Shoes',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff39374B),
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'View My Order',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: medium,
                            color: Color(0xffB7B6BF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
