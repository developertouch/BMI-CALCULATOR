import 'package:bmi_calculator/screens/bmi_class.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/styles/text_styles.dart';
import 'package:bmi_calculator/widgets/gender_continer.dart';
import 'package:bmi_calculator/widgets/weight_and_age_continer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../styles/colors.dart';
import '../widgets/button.dart';
class data_screen extends StatefulWidget {
  const data_screen({Key? key}) : super(key: key);

  @override
  State<data_screen> createState() => _data_screenState();
}

class _data_screenState extends State<data_screen> {
  int _currentIndex=0;
  double _value=79.0;
  int _age=20;
  int _weight=45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.BG_COLOR,
      body: SafeArea(
        child: Column(

          children: [
            SizedBox(height: 15,),
            Text("BMI CALCULATOR",style: GoogleFonts.poppins(
              textStyle: AppTextStyles.HEADING_TEXT,
            ),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                gender_continer(
                  iconColor: _currentIndex==0?Colors.white:Colors.black,
                  textColor: _currentIndex==0?Colors.white:Colors.black,
                  onTap: (){
                    setState(() {
                      _currentIndex=0;
                      // _textCurrentIndex=0;
                    });
                  },
                  icon: Icons.male,
                  title: "MALE",
                  color: _currentIndex==0?Colors.black54:Colors.black87,
                ),
                SizedBox(width: 10,),
                gender_continer(
                  iconColor: _currentIndex==1?Colors.white:Colors.black,
                  textColor: _currentIndex==1?Colors.white:Colors.black,
                  onTap: (){
                    setState(() {
                      _currentIndex=1;
                      // _textCurrentIndex=1;
                    });
                  },
                  icon: Icons.female,
                  title: "FEMALE",
                  color: _currentIndex==1?Colors.black54:Colors.black87,
                ),
              ],
            ),
            SizedBox(height: 5,),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),

              ),
              child:Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(12),

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGHT cm",style: GoogleFonts.poppins(
                      textStyle: AppTextStyles.HEADING_TEXT
                    ),),
                    Text("${_value.toStringAsFixed(1)}",style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 30,
                        color: Colors.white,

                      )
                    ),),
                    Slider(
                      inactiveColor: Colors.blueGrey,
                        activeColor: Colors.white,
                        thumbColor: Colors.redAccent,
                        value: _value,
                        min: 79.0,
                        max: 200.0,
                        onChanged: (v){
                      setState(() {
                        _value=v;
                      });
                    })
                  ],
                ),
              ) ,
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              weight_and_age_continer(
                negativeBtnClick: (){
                  setState(() {
                    _weight--;
                  });
                },
                positiveBtnClick: (){
                  setState(() {
                    _weight++;
                  });
                },
                textColor: Colors.white,
                title: "WEIGHT",
                number: _weight.toString(),
               ),
              SizedBox(width: 10,),
                weight_and_age_continer(
                  positiveBtnClick: (){
                    setState(() {

                      _age++;

                    });
                  },
                  negativeBtnClick: (){
                    setState(() {
                      if(_age<=0){
                        _age=0;
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Age must be greater then 0")));
                      }else{
                       _age--;
                      }
                    });
                  },
                  textColor: Colors.white,
                  title: "AGE",
                  number: _age.toString(),
                )
              ],
            ),
            SizedBox(height: 10,),
            button(
              onPressed: (){
                BmiClass bmi=BmiClass(height: _value.toInt(),weight: _weight);
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>result_screen(
                  Title: bmi.bmiTitle(),
                  result:bmi.bmiCalculate(),
                  description: bmi.bmiDescription(),
                )));
              },
              title: "CALCULATE",
              width: double.infinity,
              btnColor: Colors.redAccent,
            )





          ],
        ),
      ),

    );
  }
}
