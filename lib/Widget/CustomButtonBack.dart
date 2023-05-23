import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonBack extends StatelessWidget {
  final context;
  final Color colorIcon;
  final Color colorGround;
  final double ?width;
  final double heigh;
  final double size;
  final Function ?onpressed;
  const CustomButtonBack( {Key? key, this.context, required this.colorIcon, required this.colorGround,  this.width, required this.heigh, required this.size,  this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  RSizedBox(
      height: heigh,
      width: width,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(colorGround)),
          onPressed: () {
            Navigator.pop(context);
          }, child: Center(child: Icon(Icons.arrow_back_ios_new,color: colorIcon,size: size,))),
    );
  }
}
