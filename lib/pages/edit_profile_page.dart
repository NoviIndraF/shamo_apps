import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    AppBar header(){
      return AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
        ),
        backgroundColor: bgColor1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Edit Profile'
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.check, color: primaryColor,)
          ),
        ],
      );
    }
    Widget nameInput(){
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: secondaryTextStyle.copyWith(
                fontSize: 13
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintStyle: primaryTextStyle,
                hintText: 'Alex pulupulu',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleTextColor,
                  )
                )
              ),
            )
          ],
        ),
      );
    }
    Widget usernameInput(){
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: secondaryTextStyle.copyWith(
                  fontSize: 13
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                  hintStyle: primaryTextStyle,
                  hintText: '@Alexpulupulu',
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: subtitleTextColor,
                      )
                  )
              ),
            )
          ],
        ),
      );
    }
    Widget emailInput(){
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: secondaryTextStyle.copyWith(
                  fontSize: 13
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                  hintStyle: primaryTextStyle,
                  hintText: 'alexpulupulu@gmail.com',
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: subtitleTextColor,
                      )
                  )
              ),
            )
          ],
        ),
      );
    }
    Widget content(){
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'images/img-profile.png'
                  )
                )
              ),
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
