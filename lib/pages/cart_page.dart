import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar header(){
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          'Your Cart',
          style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    };
    Widget emptyChat(){
      return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/img-cart.png',
                width: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Opss! Your Cart is Empty',
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
                  onPressed: (){
                    Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                  },
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
          )
      );
    };

    return Scaffold(
      backgroundColor: bgColor3,
      appBar : header(),
      body :emptyChat(),
    );
  }
}
