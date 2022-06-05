import 'package:ecommerce_apps/model/theme.dart';
import 'package:ecommerce_apps/widget/chat_title.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget conten() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          width: double.infinity,
          child: ListView(
            children: [
              TitleChat(),
            ],
          ),
        ),
      );
    }

    Widget emptyChat() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_headset.png',
                width: 80,
                height: 80.5,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Opss no message yet?',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                child: Text(
                  'You have never done a transaction',
                  style: secondaryTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 14,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  height: 44,
                  width: 152,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
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
          ),
        ),
      );
    }

    return Center(
      child: Column(
        children: [
          header(),
          conten(),
        ],
      ),
    );
  }
}
