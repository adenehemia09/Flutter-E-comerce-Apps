import 'package:ecommerce_apps/model/theme.dart';
import 'package:flutter/material.dart';

class TitleChat extends StatelessWidget {
  const TitleChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        '/detail-chat',
      ),
      child: Container(
        margin: EdgeInsets.only(top: 38),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: defaulidMargin,
                ),
                Image.asset(
                  'assets/Logo Shop Picture.png',
                  width: 54,
                  height: 54,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoe Store',
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: regular,
                        ),
                      ),
                      Text(
                        'Good night, This item is on Goodnight, This item is on',
                        style: secondaryTextStyle.copyWith(
                          fontWeight: light,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: defaulidMargin,
                  ),
                  child: Text(
                    'New',
                    style: secondaryTextStyle.copyWith(
                        fontWeight: regular, fontSize: 10),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.only(
                left: defaulidMargin,
                right: defaulidMargin,
              ),
              child: Divider(
                thickness: 1,
                color: Color(0xff2B2939),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
