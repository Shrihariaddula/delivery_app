import 'package:delivery_app/utils/dimensions.dart';
import 'package:delivery_app/widgets/app_column.dart';
import 'package:delivery_app/widgets/icon_and_text_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GiftPageBody extends StatefulWidget {
  const GiftPageBody({Key? key}) : super(key: key);

  @override
  State<GiftPageBody> createState() => _GiftPageBodyState();
}

class _GiftPageBodyState extends State<GiftPageBody> {
  PageController pageController=PageController(viewportFraction: 0.85);
  var _currPageValue= 0.0;
  double _scaleFactor= 0.8;
  double _height= Dimensions.pageViewContainer;
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue= pageController.page!;
        //print("Current Value is"+_currPageValue.toString());
      });
    });
  }
  @override
  void dispose(){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Slider Section
        Container(
          //color: Colors.red,
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context,position){
                return _buildPageItem(position);
              }),
        ),
        //Dots
        new DotsIndicator(
          dotsCount: 5,
        position: _currPageValue,
        decorator: DotsDecorator(
          activeColor: Colors.teal,
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        //Popular text
        SizedBox(height: Dimensions.height30),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Popular",style: GoogleFonts.lato(color: Colors.black,textStyle: TextStyle(fontSize: Dimensions.font20))),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: Text(".",style: GoogleFonts.lato(color: Colors.black26,)),
              ),
              SizedBox(width: Dimensions.width10,),
            ],
          ),
        ),
        //List of Gift and Images
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,bottom: Dimensions.height10),
                child: Row(
                  children: [
                    //Image Below Popular
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius20),
                          color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://m.media-amazon.com/images/I/81MIUaXv6JL._SX355_.jpg"),
                          )
                      ),
                    ),
                    //Text Container
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius15),
                            bottomRight: Radius.circular(Dimensions.radius15),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Best Birthday Gifts",style: GoogleFonts.roboto(color: Colors.black,textStyle: TextStyle(fontSize: Dimensions.font20))),
                              SizedBox(height: Dimensions.height10,),
                              Text("For Kids",style: GoogleFonts.lato(color: Colors.grey,textStyle: TextStyle(fontWeight: FontWeight.w400))),
                              SizedBox(height: Dimensions.height10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconAndTextWidget(icon: Icons.location_on,
                                      text: "1.7km",
                                      iconColor: Colors.tealAccent),
                                  IconAndTextWidget(icon: Icons.access_time_rounded,
                                      text: "30min",
                                      iconColor: Colors.redAccent)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }
        ),

      ],
    );
  }
  Widget _buildPageItem(int index){
    Matrix4 matrix = new Matrix4.identity();
    if(index==_currPageValue.floor()){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);

    }else if(index ==_currPageValue.floor()+1){
      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);

    }else if(index ==_currPageValue.floor()-1){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);

    }else{
      var currScale=0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height:Dimensions.pageViewContainer,
            margin: EdgeInsets.only(left: 10,right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd32kNgWF4z9qhJKSOvn59QBtgsSxwXCy-UA&usqp=CAU.jpg"),


                ),

            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left: 30,right: 30,bottom: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0,5)
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5,0)
                    ),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(5,0)
                    )
                  ]

              ),
              child: Container(
                padding: EdgeInsets.only(top: 15,left: 15,right: 15),
                child: AppColumn(text: 'Decorative Mugs',),

              ),
              ),
            ),
        ],
      ),
    );
  }
}
