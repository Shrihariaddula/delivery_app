import 'package:delivery_app/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconAndTextWidget({Key? key,
  required this.icon,
  required this.text,
  required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor,size: Dimensions.iconSize24),
        SizedBox(width: 5,),
        Text(text,style: GoogleFonts.lato()),

      ],
    );
  }
}
