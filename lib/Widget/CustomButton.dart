import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {

  final double ?width;
  final  onpress;
  final Color color;
  final Color colorText;
  final String text;
   CustomButton({Key? key,  this.width, this.onpress, required this.color, required this.colorText, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      height: 59,
      width: width,
      child: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color) ),
          onPressed:onpress, child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
        ),
               child: Center(child: Text(text,style: TextStyle(color: colorText),)),

      )),
    );
  }
}
