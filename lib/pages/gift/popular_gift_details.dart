import 'package:delivery_app/utils/dimensions.dart';
import 'package:delivery_app/widgets/app_column.dart';
import 'package:delivery_app/widgets/app_icon.dart';
import 'package:delivery_app/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/icon_and_text_widget.dart';

class PopularGiftDetails extends StatelessWidget {
  const PopularGiftDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularGiftImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://static.javatpoint.com/top10-technologies/images/top-10-perfume-brands-for-males-in-india7.png")
                  )
                ),

              )
          ),
          //icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon:Icons.arrow_back_ios),
                  AppIcon(icon:Icons.shopping_cart_outlined),

                ],

          )),
          //introduction of gifts
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularGiftImgSize-20,
              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text:"Perfumes"),
                    SizedBox(height: Dimensions.height20,),
                    Text("Introduce",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: Dimensions.font20))),
                    Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: 'The word perfume is from a Latin phrase meaning “through smoke” and was thought to have been invented by the ancient Egyptians who burned fragrant woods and plants for their pleasant odours. Over the years perfume has been used, refined and enhanced by every major civilization and today perfume as we know it is a very big business.This Denver perfume is a blend of Sandal, Bergamot, Lavender & Verbena. It is one of the best smelling perfumes ideal for men with long lasting fragrance that provide protection against body odour.',))),


                  ],
                ),
          )),


        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30,bottom: Dimensions.height30,left: Dimensions.width20,right: Dimensions.width20),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20
              ),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: Colors.black,),
                  SizedBox(width: Dimensions.width10/2,),
                  Text("0",style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: Dimensions.font20))),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add,color: Colors.black,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),
              child: Text("\$10 | Add to Cart", style: GoogleFonts.roboto(color: Colors.white)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color:Colors.teal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
