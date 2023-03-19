import 'package:delivery_app/utils/dimensions.dart';
import 'package:delivery_app/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendedGiftDetail extends StatelessWidget {
  const RecommendedGiftDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.clear,color: Colors.black,),
                Icon(Icons.shopping_cart_outlined,color: Colors.black,)

              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(5),
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Text("Jewellery",style: GoogleFonts.roboto(fontSize: Dimensions.font26),),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(Dimensions.radius20),
                //     topRight: Radius.circular(Dimensions.radius20),
                //   )
                // ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.white,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background:  Image.network(
                  "https://sunnydiamonds.com/blog/wp-content/uploads/2022/06/210610032-768x768.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),

            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi varius, fringilla purus eget, ultrices orci. Nulla tortor lacus, dapibus sed ex sed, ullamcorper venenatis ipsum. Duis ac tortor mattis, tempus massa ut, euismod lacus. Duis accumsan libero ut malesuada mollis. Mauris ornare ante augue. Suspendisse accumsan leo vel lacinia commodo. Suspendisse fermentum eros quis nulla hendrerit consequat. Donec euismod a orci eget consectetur. Pellentesque quis sem commodo, mattis odio sit amet, accumsan dui. Maecenas convallis vehicula nulla, sed aliquet turpis faucibus quis. Maecenas consequat nisl fringilla odio facilisis dignissim. Ut et tortor ut dui aliquet tempor.Nam tristique ornare tortor, nec dictum mauris. Nulla blandit congue odio nec scelerisque. Suspendisse potenti. Pellentesque metus quam, fringilla facilisis malesuada vitae, tempor nec enim. Etiam sed orci malesuada, maximus leo id, tempor sem. Donec a vestibulum augue. Phasellus luctus est sem, id efficitur orci laoreet tristique. Donec a risus quis tellus lobortis varius vitae non felis. Cras a massa quis dolor pellentesque porta pharetra at arcu. Vestibulum eu nibh diam. Morbi molestie sem ut elementum egestas.Aenean a orci pulvinar, hendrerit dui sit amet, consequat turpis. Sed ullamcorper mattis finibus. Suspendisse quis ullamcorper ligula. Nulla imperdiet justo quis gravida congue. Mauris fermentum nec erat nec scelerisque. Vivamus eget mi non magna pharetra vulputate congue nec eros. Phasellus sit amet volutpat dolor. Vestibulum lacinia iaculis mauris, ut ullamcorper justo molestie quis. Phasellus tristique lobortis nulla eu congue. Maecenas eget odio sed est faucibus gravida. Morbi nec justo lectus.',),
                  margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                )
              ],
            )
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  size: Dimensions.iconSize24,
                    color:Colors.black,
                    Icons.remove),
                Text("\$12.88 "+" X "+" 0",style: GoogleFonts.roboto(color: Colors.teal,fontSize: Dimensions.font20),),
                Icon(
                  size: Dimensions.iconSize24,
                    color: Colors.black,
                    Icons.add)
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: Colors.teal,
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
        ],
      ),
    );
  }
}
