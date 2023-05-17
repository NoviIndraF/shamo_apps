import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

import '../../widgets/wishlist_card.dart';

class WishlishPage extends StatelessWidget {
  const WishlishPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header(){
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          'Favorite Shoes',
          style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    };
    Widget emptyWishlish(){
      return Expanded(
          child: Container(
            width: double.infinity,
            color: bgColor3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/img-favorite.png',
                  width: 80,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  ' You don\'t have dream shoes?',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Let\'s find your favorite shoes',
                  style: secondaryTextStyle,
                ),
                SizedBox(height: 20,),
                Container(
                  height: 44,
                  child: TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 10,
                      ),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                        'Explore Store',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        )
                    ),
                  ),
                )
              ],
            ),
          )
      );
    };
      Widget content(){
        return Expanded(
            child: Container(
              width: double.infinity,
              color: bgColor3,
              child: ListView(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                children: [
                  WishlistCard(),
                  WishlistCard(),
                  WishlistCard(),
                  WishlistCard(),
                ],
              ),
            )
        );
    };

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
