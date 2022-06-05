import 'package:ecommerce_apps/model/theme.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSize header() {
      return PreferredSize(
        child: AppBar(
          backgroundColor: backgroundColor1,
          leading: IconButton(
            icon: Icon(
              Icons.clear_rounded,
              size: 25,
              color: primaryTextColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            'Edit Profile',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.check_rounded,
                size: 25,
                color: primaryColor,
              ),
            ),
          ],
        ),
        preferredSize: Size.fromHeight(60),
      );
    }

    Widget nameInput(String titleInput, String inputName) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleInput,
              style: subTitleTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: inputName,
                hintStyle: primaryTextStyle.copyWith(
                  fontSize: 16,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subTitle,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.all(defaulidMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipOval(
                child: Image.asset(
                  'assets/ade.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            SizedBox(
              height: defaulidMargin,
            ),
            nameInput('Name', 'Ade Nehemia Setiawan'),
            SizedBox(
              height: 24,
            ),
            nameInput('Username', '@adenehemia09'),
            SizedBox(
              height: 24,
            ),
            nameInput('Email Address', 'adenehemia2002@gmail.com'),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
