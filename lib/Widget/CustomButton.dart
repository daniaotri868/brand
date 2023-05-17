import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {

  final  width;
  final onpress;
  final color;
  final colorText;
  final text;
  const CustomButton({Key? key,  this.width, this.onpress, this.color, this.colorText, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      height: 59,
      width: width,
      child: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color) ),
          onPressed:onpress, child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),


               child: Center(child: Text("$text",style: TextStyle(color: colorText),)),

      )),
    );
  }
}
