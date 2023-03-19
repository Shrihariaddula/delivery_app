import 'package:get/get.dart';

class Dimensions{

 static double screenHeight=Get.context!.height;
 static double screenWidth=Get.context!.width;

 static double pageView=screenHeight/2.44; //781/320
 static double pageViewContainer=screenHeight/3.55; //781/220
 static double pageViewTextContainer=screenHeight/6.50; //781/120

//dynamic height padding and margin
 static double height10=screenHeight/78.1;
 static double height15=screenHeight/52.0;
 static double height17=screenHeight/45.94;
 static double height20=screenHeight/39.05;
 static double height30=screenHeight/26.03;
 static double height45=screenHeight/17.35;

 //dynamic width padding and margin
 static double width5=screenHeight/156.2;
 static double width10=screenHeight/78.1;
 static double width20=screenHeight/39.05;
 static double width30=screenHeight/26.03;

 //radius
 static double radius15=screenHeight/52.06;
 static double radius20=screenHeight/39.05;
 static double radius30=screenHeight/26.03;

 //Font Size
 static double font16=screenHeight/48.81;
 static double font20=screenHeight/39.05;
 static double font26=screenHeight/30.03;

 static double iconSize24 = screenHeight/32.54;
 static double iconSize16 = screenHeight/48.81;

 static double listViewImgSize=screenWidth/6.50;
 static double listViewTextContSize=screenWidth/7.81;

 //popular gift
 static double popularGiftImgSize=screenHeight/2.23;

 //bottom height
static double bottomHeightBar=screenHeight/6.50;
}
