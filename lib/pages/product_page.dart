import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int currentIndex = 0;
  List images = [
    'images/img-shoes.png',
    'images/img-shoes.png',
    'images/img-shoes.png',
  ];

  List familiarShoes = [
    'images/img-shoes.png',
    'images/img-shoes.png',
    'images/img-shoes.png',
    'images/img-shoes.png',
    'images/img-shoes.png',
    'images/img-shoes.png',
    'images/img-shoes.png',
    'images/img-shoes.png',
    'images/img-shoes.png',
  ];

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {

    Future<void> showSuccessDialog(){
      return showDialog(
          context: context,
          builder: (BuildContext context) => Container (
            width: MediaQuery.of(context).size.width - (2* defaultMargin),
            child: AlertDialog(
              backgroundColor: bgColor3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: primaryTextColor,
                        ),
                      ),
                    ),
                    Image.asset(
                      'icons/ic-success.png',
                      width: 100,
                    ),
                    SizedBox(height: 12,),
                    Text(
                      'Hurray :)',
                      style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semibold,
                      ),
                    ),
                    SizedBox(height: 12,),
                    Text(
                      'Item added successfully',
                      style: secondaryTextStyle,
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: 154,
                      height: 44,
                      child: TextButton(
                        onPressed: (){},
                        style: TextButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'View My Cart',
                          style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ));
    }

    Widget indicator(int index){
      return Container(
        width: currentIndex==index ?16:4,
          height: 4,
          margin: EdgeInsets.symmetric(
          horizontal: 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex==index ? primaryColor:Color(0xffC4c4c4),
        ),
      );
    }
    Widget familiarShoesCard(String imageUrl){
      return Container(
        width: 54,
        height: 54,
        margin: EdgeInsets.only(
          right: 16,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl)
          ),
          borderRadius: BorderRadius.circular(6)
        ),
      );
    }
    Widget header(){
      int index = -1;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap:(){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.chevron_left)
                ),
                Icon(
                  Icons.shopping_bag,
                  color: bgColor1,
                )
              ],
            ),
          ),
          CarouselSlider(
              items: images.map(
                      (image) => Image.asset(
                          image,
                          width: MediaQuery.of(context).size.width,
                        height: 310,
                        fit: BoxFit.cover,
                      ),
              ).toList(),
              options: CarouselOptions(
                initialPage: 0,
                onPageChanged: (index, reason){
                  setState(() {
                    currentIndex = index;
                  });
                }
              ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e){
              index++;
              return indicator(index);
              }).toList(),
          ),
        ],
      );
    }
    Widget content(){
      int index = -1;
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 17),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(12)
          ),
          color: bgColor1,
        ),
        child: Column(
          children: [
            Container(
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
                        Text(
                          'TERREX URBAN LOW',
                          style: primaryTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semibold,
                          ),
                        ),
                        Text(
                          'Hiking',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        )
                      ],
                    )
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                      if(isFavorite){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              backgroundColor: secondaryColor,
                              content: Text(
                            'Has been added to the wishlist',
                                textAlign: TextAlign.center,
                          ))
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                backgroundColor: alertColor,
                                content: Text(
                                  'Has been removed from the wishlist',
                                  textAlign: TextAlign.center,
                                ))
                        );
                      }
                    },
                    child: Image.asset(
                      isFavorite ?
                      'buttons/btn-favorite-on.png':
                      'buttons/btn-favorite.png',
                      width: 46,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 20,
                left: defaultMargin,
                right: defaultMargin,
              ),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: bgColor2,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price starts from',
                    style: primaryTextStyle,
                  ),
                  Text(
                    '\$143,96',
                    style: priceTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
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
                    'Unpaved trails and mixed surfaces are easy when you bla bla bla bla',
                    style: subtitleTextStyle.copyWith(
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultMargin,
                      ),
                    child: Text(
                      'Familiar Shoes',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: familiarShoes.map(
                              (image) {
                                index++;
                                return Container(
                                  margin: EdgeInsets.only(
                                    left: index == 0 ? defaultMargin : 0,
                                  ),
                                  child: familiarShoesCard(image)
                                );
                              }
                      ).toList(),
                    ),
                  )
                ],
              ),
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.all(defaultMargin),
              child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/detail-chat');
                         },
                      child: Container(
                          width: 54,
                          height: 54,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                              'buttons/btn-chat.png'
                              )
                            )
                          ),
                      ),
                    ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                    height: 54,
                    child: TextButton(
                      onPressed: (){
                        showSuccessDialog();
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: primaryColor
                      ),
                        child: Text(
                          'Add to Cart',
                          style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semibold
                          ),
                        ),
                      ),
                    ),
                  )
                  ],
                ),
              ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor6,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
