import 'dart:math';


class BmiClass{
  int? height;
  int? weight;

  BmiClass({this.height,this.weight});

  double _bmi=0.0;

  String bmiCalculate(){
    _bmi=weight!/pow(height! / 100,2);
    return _bmi.toStringAsFixed(1);
  }
  // String? bmiTitle(){
  //   switch(_bmi){
  //     case '_bmi < 18':
  //       print("underWeight");
  //       break;
  //     case ' _bmi >= 18 && _bmi <= 24':
  //       print("noraml");
  //       break;
  //       default:
  //         print("overweight");
  //         break;
  //   }
  // }
  String bmiTitle(){
    if(_bmi < 18){
      return "underWeight";
    }else if( _bmi >= 18 && _bmi <= 24){
      return "Normal";
    }else{
      return "OverWeight";
    };
  }
  String bmiDescription(){
    if(_bmi < 18){
      return "You are underweight try to\n gain some weight";
    }else if( _bmi >= 18 && _bmi <= 24) {
      return "Congratulation!!! your BMI is normal";
    }else{
      return "Oops !! you are over weight\n try to lose some weight";
    }

  }


}