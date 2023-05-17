import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';
import 'package:shamo_apps/widgets/chat_bubble.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    PreferredSize header() {
      return PreferredSize(
          child: AppBar(
            backgroundColor: bgColor1,
            centerTitle: false,
            title: Row(
              children: [
                Image.asset(
                  'images/img-shop-logo-online.png',
                  width: 50,
                ),
                SizedBox(width: 12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Online',
                      style: secondaryTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 14,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          preferredSize: Size.fromHeight(70),
      );
    }
    Widget productPreview(){
      return Container(
        width: 225,
        height: 74,
        margin:EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bgColor5,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: primaryColor,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'images/img-shoes.png',
                width: 54,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'COURT VISO...',
                    style: primaryTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '\$57,15',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
            Image.asset(
              'buttons/btn-close.png',
              width: 22,
            )
          ],
        ),
      );
    }
    Widget content(){
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          ChatBubble(
            isSender: true,
            text: 'pulu, pulu pulu',
            hasProduct: true,
          ),
          ChatBubble(
            isSender: false,
            text: 'pulu pulu, pulu?',
          ),
          ChatBubble(
            isSender: true,
            text: 'pulu pulu pulu?',
          ),
          ChatBubble(
            isSender: false,
            text: 'pulu',
          ),
          ChatBubble(
            isSender: true,
            text: 'pulu pulu pulu?',
          ),
          ChatBubble(
            isSender: false,
            text: 'pulu',
          ),
          ChatBubble(
            isSender: true,
            text: 'pulu pulu pulu?',
          ),
          ChatBubble(
            isSender: false,
            text: 'pulu',
          )
        ],
      );
    }
    Widget chatInput(){
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productPreview(),
            Row(
              children: [
                Expanded(
                    child: Container(
                      height: 45,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: bgColor4,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Type Message...',
                            hintStyle: subtitleTextStyle,
                          ),
                        ),
                      ),
                    ),
                ),
                SizedBox(width: 20,),
                Image.asset(
                  'buttons/btn-send.png',
                  width: 45,
                )
              ],
            ),
          ],
        ),
      );
    }
    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
