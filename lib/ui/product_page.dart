import 'package:ecommerce_apps/model/theme.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductPage extends StatefulWidget {
  //const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final List images = [
    'assets/images_shoes.png',
    'assets/images_shoes2.png',
    'assets/images_shoes.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget indicator(int index) {
      return Container(
        margin: EdgeInsets.only(
          right: 3,
          left: 3,
        ),
        width: currentIndex == index ? 16 : 6,
        height: 6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? primaryColor : Color(0xffC4C4C4),
        ),
      );
    }

    Widget header() {
      int index = -1;

      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaulidMargin,
              right: defaulidMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 20,
                    color: backgroundColor1,
                  ),
                ),
                Icon(
                  Icons.shopping_bag,
                  color: backgroundColor1,
                  size: 25,
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: images
                .map(
                  (image) => Image.asset(
                    image,
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
                autoPlay: true,
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                    //print(currentIndex);
                  });
                }),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.map((e) {
                index++;
                return indicator(index);
              }).toList())
        ],
      );
    }

    Widget imagesDeskripsi(String images) {
      return Container(
        margin: EdgeInsets.only(
          right: 16,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            images,
            width: 54,
            height: 54,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget product() {
      return Expanded(
        child: Container(
          margin: EdgeInsets.only(top: 17),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: backgroundColor1,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: defaulidMargin,
                  left: defaulidMargin,
                  right: defaulidMargin,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'TERREX URBAN LOW',
                            style: primaryTextStyle.copyWith(
                              fontWeight: semiBold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Hiking',
                            style: subTitleTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/Love Button.png',
                      width: 46,
                    )
                  ],
                ),
              ),

              /// Note: Ini Adalah Container Price
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  left: defaulidMargin,
                  right: defaulidMargin,
                ),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Price starts from',
                        style: primaryTextStyle,
                      ),
                      Text(
                        '\$143,98',
                        style: priceTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              /// Note: Ini Adalah Container Deskripsi
              Container(
                padding: EdgeInsets.only(
                  top: defaulidMargin,
                  left: defaulidMargin,
                  right: defaulidMargin,
                  bottom: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Unpaved trails and mixed'
                      'surfaces are easy when you have the traction'
                      'and support you need. Casual enough for the daily commute.',
                      style: subTitleTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    SizedBox(
                      height: defaulidMargin,
                    ),
                    Text(
                      'Fimiliar Shoes',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(
                  left: 11,
                  //bottom: defaulidMargin,
                ),
                height: 54,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      imagesDeskripsi('assets/images_shoes.png'),
                      imagesDeskripsi('assets/images_shoes.png'),
                      imagesDeskripsi('assets/3.png'),
                      imagesDeskripsi('assets/4.png'),
                      imagesDeskripsi('assets/5.png'),
                      imagesDeskripsi('assets/6.png'),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(defaulidMargin),
                child: Row(
                  children: [
                    Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: primaryColor,
                          width: 1,
                        ),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Image.asset(
                        'assets/Chat Icon2.png',
                        width: 23,
                        //  color: primaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: primaryColor,
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Add to Cart',
                              style: primaryTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor6,
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            product(),
          ],
        ),
      ),
    );
  }
}
