import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';
import 'package:shamo_apps/widgets/product_cart.dart';

import '../../widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello, Alex',style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semibold,
                    ),
                  ),
                  Text('@alexkenin',
                    style: subtitleTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('images/img-profile.png')),
              ),
            )
          ],
        ),
      );
    }
    Widget categories(){
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Text('All Shoes',
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: subtitleTextColor,
                  ),
                  color: transparentColor,
                ),
                child: Text('Trining',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: subtitleTextColor,
                  ),
                  color: transparentColor,
                ),
                child: Text('Basket Ball',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: subtitleTextColor,
                  ),
                  color: transparentColor,
                ),
                child: Text('Hiking',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),),
              ),
            ],
          ),
        ),
      );
    }
    Widget popularProductTitle(){
      return Container(
        margin: EdgeInsets.only(
          top:defaultMargin,
          left: defaultMargin,
          right: defaultMargin
        ),
        child: Text(
          'Popular Product',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semibold,
          ),
        ),
      );
    }
    Widget popularProduct(){
      return Container(
        margin: EdgeInsets.only(
            top:14,
            left: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductCart(),
              ProductCart(),
              ProductCart(),
              ProductCart(),
              ProductCart(),
            ],
          ),
        ),
      );
    }
    Widget newArrivalProductTitle(){
      return Container(
        margin: EdgeInsets.only(
            top:defaultMargin,
            left: defaultMargin,
            right: defaultMargin
        ),
        child: Text(
          'New Arrival Product',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semibold,
          ),
        ),
      );
    }
    Widget newArrivals(){
      return Container(
        margin: EdgeInsets.only(top :14),
        child: Column(
          children: [
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      );
    }
    return ListView(
      children :[
        header(),
        categories(),
        popularProductTitle(),
        popularProduct(),
        newArrivalProductTitle(),
        newArrivals(),
      ]
    );
  }
}
