import 'package:delivery_app/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'gift_page_body.dart';

class MainGiftPage extends StatefulWidget{
  const MainGiftPage({Key? key}):super(key: key);

  @override
  _MainGiftPageState createState() => _MainGiftPageState();
}

class _MainGiftPageState extends State<MainGiftPage>{
  @override
  Widget build(BuildContext context){
    print("current height is "+ MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45,bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("India",style: GoogleFonts.andika(color: Colors.teal, textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400))),
                      Row(
                        children: [
                          Text("Mumbai",style: GoogleFonts.lato(color: Colors.black54, textStyle: TextStyle(fontSize: 15))),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                    width: Dimensions.height45,
                    height: Dimensions.height45,
                    child: Icon(Icons.search, color:Colors.white,size: Dimensions.iconSize24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: Colors.teal,
                    ),
                  ),
                  ),
                  //Image.network("https://picsum.photos/250?image=9")
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(
            child: GiftPageBody(),
          )),
        ],
      ),
    );
  }
}
