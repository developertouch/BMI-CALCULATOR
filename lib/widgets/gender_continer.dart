import 'package:bmi_calculator/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class gender_continer extends StatelessWidget {
  final VoidCallback? onTap;
  final Color? color;
  final String? title;
  final IconData? icon;
  final Color? textColor;
  final Color? iconColor;
  const gender_continer({Key? key, this.title, this.icon, this.onTap, this.color, this.textColor, this.iconColor,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 2,
        child: Container(
          height: 200,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon!,size: 55,color:iconColor
              ),
              SizedBox(height: 10,),
              Text(title!,style: GoogleFonts.poppins(
                textStyle:TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: textColor,
                )
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
