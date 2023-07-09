import 'package:bmi_calculator/styles/colors.dart';
import 'package:bmi_calculator/styles/text_styles.dart';
import 'package:bmi_calculator/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class result_screen extends StatelessWidget {
  final String? Title;
  final String? result;
  final String? description;
  const result_screen({Key? key, required this.Title, required this.result, required this.description,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.BG_COLOR,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.BG_COLOR,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text("YOUR RESULT",style: GoogleFonts.poppins(
                  textStyle: AppTextStyles.HEADING_TEXT,
                ),),
              ),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.all(12),
                height: 470,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white10
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      Title!,
                      style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.green,
                      )
                    ),),
                    Text(
                    result!,style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,

                      ),

                    ),),
                    Text(description!,style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white,

                      )
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              button(
                title: "RECALCULATE",
                btnColor: Colors.redAccent,
                width: double.infinity,
                onPressed: (){
                  Navigator.of(context).pop();
                },

              ),
            ],
          ),
        ),
      ),
    );
  }
}
