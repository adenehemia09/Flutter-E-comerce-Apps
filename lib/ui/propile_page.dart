import 'package:ecommerce_apps/model/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(defaulidMargin),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/ade.png',
                    width: 54,
                    height: 54,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo, Ade',
                        style: primaryTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '@adenehemia09',
                        style: subTitleTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/sign-in', (route) => false),
                  child: Image.asset(
                    'assets/Exit Button.png',
                    width: 20,
                    height: 20,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget titleProfile(String title) {
      return Container(
        margin: EdgeInsets.only(
          left: defaulidMargin,
        ),
        child: Text(
          title,
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget subTitle(String subTitle) {
      return Container(
        margin: EdgeInsets.only(
          right: defaulidMargin,
          left: defaulidMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              subTitle,
              style: subTitleTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
              color: secondaryTextColor,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              titleProfile('Account'),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  '/edit-profile',
                ),
                child: subTitle('Edit Profile'),
              ),
              SizedBox(
                height: 20,
              ),
              subTitle('Your OrdersEdit Profile'),
              SizedBox(
                height: 20,
              ),
              subTitle('Help'),
              SizedBox(
                height: 30,
              ),
              titleProfile('General'),
              SizedBox(
                height: 16,
              ),
              subTitle('Privacy & Policy'),
              SizedBox(
                height: 20,
              ),
              subTitle('Term of Service'),
              SizedBox(
                height: 20,
              ),
              subTitle('Rate App'),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
