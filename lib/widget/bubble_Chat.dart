import 'package:ecommerce_apps/model/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BubbleChat extends StatelessWidget {
  //const BubbleChat({Key? key}) : super(key: key);

  final String text;
  final bool isSender;
  final bool hasProduct;

  BubbleChat({
    this.isSender = false,
    this.text = '',
    this.hasProduct = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget productsPreview() {
      return Container(
        width: 231,
        // height: 155,
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(12),
        color: isSender ? backgroundColor5 : backgroundColor4,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images_shoes.png',
                    width: 70,
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
                        'COURT VISION 2.0 SHOES',
                        style: primaryTextStyle,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '\$57,15',
                        style: priceTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: primaryColor,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Add to card',
                    style: purpleTextStyle,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: Text(
                      'Buy Now',
                      style: GoogleFonts.poppins(
                        color: backgroundColor5,
                        fontWeight: medium,
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

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productsPreview() : SizedBox(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      topLeft: Radius.circular(isSender ? 12 : 0),
                      topRight: Radius.circular(isSender ? 0 : 12),
                    ),
                    color: isSender ? backgroundColor5 : backgroundColor4,
                  ),
                  child: Text(
                    text,
                    style: primaryTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}