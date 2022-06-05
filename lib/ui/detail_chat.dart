import 'package:ecommerce_apps/model/theme.dart';
import 'package:ecommerce_apps/widget/bubble_Chat.dart';
import 'package:flutter/material.dart';

class DetailChat extends StatelessWidget {
  const DetailChat({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    PreferredSize header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: backgroundColor1,
          centerTitle: false,
          title: Row(
            children: [
              Image.asset(
                'assets/icon_online_shop_shoes.png',
                width: 50,
                height: 50,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoe Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'Online',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget productPriview() {
      return Container(
        width: 225,
        height: 74,
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: backgroundColor5,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: primaryColor,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10.09,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images_shoes.png',
                  width: 54.48,
                  height: 54,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Predator 20.3 Firm Ground',
                    style: primaryTextStyle,
                    overflow: TextOverflow.ellipsis,
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
            Container(
              margin: EdgeInsets.only(top: 10, right: 10),
              child: Image.asset(
                'assets/close_icon.png',
                width: 22.2,
              ),
            )
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            productPriview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                      height: 45,
                      decoration: BoxDecoration(
                        color: backgroundColor4,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: TextFormField(
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: regular,
                          ),
                          decoration: InputDecoration.collapsed(
                            hintText: 'Type Message...',
                            hintStyle: subTitleTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                            ),
                          ),
                        ),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Image.asset(
                    'assets/Send Button.png',
                    height: 45,
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaulidMargin,
        ),
        children: [
          BubbleChat(
            isSender: true,
            text: 'Hi, This item is still available?',
            hasProduct: true,
          ),
          BubbleChat(
            isSender: false,
            text: 'Good night, This item is only available in size 42 and 43',
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
