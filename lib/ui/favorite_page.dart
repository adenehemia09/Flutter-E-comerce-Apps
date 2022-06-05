import 'package:ecommerce_apps/model/theme.dart';
import 'package:ecommerce_apps/widget/cart_favorite.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Favorite Shoes',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget emptyFavorite() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 23),
                child: Image.asset(
                  'assets/Love Icon.png',
                  width: 74,
                  height: 62,
                ),
              ),
              Column(
                children: [
                  Text(
                    "You don't have dream shoes?",
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
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(top: 20),
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

    Widget emptyFavoriteCart() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: ListView(
            children: [
              FavoriteCart(),
              FavoriteCart(),
              FavoriteCart(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        //emptyFavorite(),
        emptyFavoriteCart(),
      ],
    );
  }
}
