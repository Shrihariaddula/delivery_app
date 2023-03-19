import 'package:delivery_app/utils/dimensions.dart';
import 'package:delivery_app/widgets/icon_and_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,style: GoogleFonts.andika(color: Colors.black,textStyle: TextStyle(fontSize: Dimensions.font20))),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) => Icon(Icons.star,color: Colors.yellow,size: 15)),
            ),
            SizedBox(width: 10),
            Text("4.5",style: GoogleFonts.lato(color: Colors.grey,textStyle: TextStyle(fontWeight: FontWeight.w400))),

          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(icon: Icons.circle_sharp,
                text: "Normal",

                iconColor: Colors.amberAccent),
            IconAndTextWidget(icon: Icons.location_on,
                text: "1.7km",
                iconColor: Colors.tealAccent),
            IconAndTextWidget(icon: Icons.access_time_rounded,
                text: "30min",
                iconColor: Colors.redAccent)
          ],
        )
      ],
    );
  }
}
