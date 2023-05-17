import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(height: 2,),
            Text(
              'Sign In to Continue',
              style: subtitleTextStyle,
            ),
          ],
        ),
      );
    }
    Widget emailInput(){
      return Container(
        margin: const EdgeInsets.only(top: 70),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(
                'Email Address',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: bgColor2,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Image.asset('icons/ic-email.png', width: 17,),
                      const SizedBox(width: 16),
                      Expanded(child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: subtitleTextStyle,
                        ),
                      )),
                    ],
                  ),
                ),
              )
            ]
        ),
      );
    }
    Widget passwordInput(){
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(
                'Password',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: bgColor2,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Image.asset('icons/ic-password.png', width: 17,),
                      const SizedBox(width: 16),
                      Expanded(
                          child: TextFormField(
                            obscureText: true,
                            style: primaryTextStyle,
                            decoration: InputDecoration.collapsed(
                              hintText: 'Your Password',
                              hintStyle: subtitleTextStyle,
                            ),
                          )),
                    ],
                  ),
                ),
              )
            ]
        ),
      );
    }
    Widget signUpButton(){
      return Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/main');
            },
            style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Sign In',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            )
        ),
      );
    }
    Widget footer(){
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dont have an account? ',
              style: subtitleTextStyle.copyWith(
                  fontSize: 12
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                'Sign Up',
                style: purpleTextStyle.copyWith(
                    fontSize: 12
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              emailInput(),
              passwordInput(),
              signUpButton(),
              const Spacer(),
              footer(),
            ],
          )
        ),
      ),
    );
  }
}
