import 'package:ecommerce_apps/model/theme.dart';
import 'package:ecommerce_apps/widget/product_cart.dart';
import 'package:ecommerce_apps/widget/product_title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaulidMargin,
          left: defaulidMargin,
          right: defaulidMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, Ade Nehemia Setiawan',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '@adenehemia09',
                    style: subTitleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/profil saya.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget categoris() {
      ///------------------> container categori
      return Container(
        margin: EdgeInsets?.only(
          top: defaulidMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaulidMargin,
              ),
              Container(
                padding: EdgeInsets?.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets?.only(
                  right: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Text(
                  'All Shoes',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets?.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets?.only(
                  right: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: tranparentColors,
                  border: Border.all(
                    color: subTitle,
                    width: 0.5,
                  ),
                ),
                child: Text(
                  'Running',
                  style: subTitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets?.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets?.only(
                  right: 16,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: tranparentColors,
                    border: Border.all(
                      color: subTitle,
                      width: 0.5,
                    )),
                child: Text(
                  'Training',
                  style: subTitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets?.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets?.only(
                  right: 16,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: tranparentColors,
                    border: Border.all(
                      color: subTitle,
                      width: 0.5,
                    )),
                child: Text(
                  'Basketball',
                  style: subTitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets?.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets?.only(
                  right: 16,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: tranparentColors,
                    border: Border.all(
                      color: subTitle,
                      width: 0.5,
                    )),
                child: Text(
                  'Hiking',
                  style: subTitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularProdukTile() {
      return Container(
        margin: EdgeInsets?.only(
          top: defaulidMargin,
          left: defaulidMargin,
          right: defaulidMargin,
        ),
        child: Text(
          'Popular Products',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget popularProducts() {
      return Container(
        margin: EdgeInsets?.only(
          top: 14,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaulidMargin,
              ),
              Row(
                children: [
                  ProductsCart(
                    key: key,
                  ),
                  ProductsCart(
                    key: key,
                  ),
                  ProductsCart(
                    key: key,
                  ),
                  ProductsCart(
                    key: key,
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget newArrivalsTile() {
      return Container(
        margin: EdgeInsets.only(
          top: defaulidMargin,
          left: defaulidMargin,
          right: defaulidMargin,
        ),
        child: Text(
          'New Arrivals',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: const EdgeInsets.only(top: 14),
        child: Column(
          children: [
            ProductTitle(),
            ProductTitle(),
            ProductTitle(),
            ProductTitle(),
            ProductTitle(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        categoris(),
        popularProdukTile(),
        popularProducts(),
        newArrivalsTile(),
        newArrivals(),
      ],
    );
  }
}
