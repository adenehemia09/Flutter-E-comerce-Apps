import 'package:ecommerce_apps/model/theme.dart';
import 'package:ecommerce_apps/ui/chat_page.dart';
import 'package:ecommerce_apps/ui/favorite_page.dart';
import 'package:ecommerce_apps/ui/home_page.dart';
import 'package:ecommerce_apps/ui/propile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget? cartButton() {
      return FloatingActionButton(
        backgroundColor: secondaryColor,
        onPressed: () {
          Navigator.pushNamed(context, '/cart-page');
        },
        child: Image.asset(
          'assets/Cart.png',
          width: 20,
        ),
      );
    }

    Widget? cusstomBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: backgroundColor4,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (value) {
              //print(value);
              setState(
                () {
                  currentIndex = value;
                },
              );
            },
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets?.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image?.asset(
                    'assets/Home.png',
                    width: 21,
                    color: currentIndex == 0 ? primaryColor : coba,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets?.only(
                    top: 20,
                    bottom: 10,
                    right: 30,
                  ),
                  child: Image.asset(
                    'assets/Chat Icon.png',
                    width: 20,
                    color: currentIndex == 1 ? primaryColor : coba,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets?.only(
                    top: 20,
                    bottom: 10,
                    left: 30,
                  ),
                  child: Image?.asset(
                    'assets/favorite.png',
                    width: 20,
                    color: currentIndex == 2 ? primaryColor : coba,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets?.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/Profile.png',
                    width: 18,
                    color: currentIndex == 3 ? primaryColor : coba,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget? body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return ChatPage();
        case 2:
          return FavoritePage();
        case 3:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: cusstomBottomNav(),
      body: body(),
    );
  }
}
