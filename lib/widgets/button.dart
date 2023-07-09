import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class button extends StatefulWidget {
  final String? title;
  final Color? btnColor;
  final VoidCallback? onPressed;
  final double? width;
  const button({Key? key, this.title, this.btnColor, this.onPressed, this.width}) : super(key: key);

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {

  @override
  Widget build(BuildContext context) {
    return MaterialButton(

      onPressed: widget.onPressed,
      height: 48,
      child:Text(widget.title!,style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          )
      ),),
      minWidth: widget.width,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: widget.btnColor,
    );
  }
}
