import 'package:bmi_calculator/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class weight_and_age_continer extends StatelessWidget {
  final VoidCallback? negativeBtnClick;
  final VoidCallback? positiveBtnClick;
  final String? number;
  final String? title;
  final Color? textColor;
  const weight_and_age_continer({Key? key, this.title, this.textColor, this.number, this.negativeBtnClick, this.positiveBtnClick,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 2,
      child: Container(
        height: 200,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black87,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title!,style: GoogleFonts.poppins(
                textStyle:TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.white,
                )
            ),
            ),
            Text(number!,style: GoogleFonts.poppins(
                textStyle:TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: textColor,

                )
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    shape: BoxShape.circle
                  ),
                  child: IconButton(onPressed: positiveBtnClick, icon: Icon(Icons.add,color: Colors.white,))
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      shape: BoxShape.circle
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: IconButton(onPressed: negativeBtnClick, icon: Icon(Icons.minimize_rounded,color: Colors.white,)),
                  ),
                )

              ],
            ),

          ],
        ),
      ),
    );
  }
}
