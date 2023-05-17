import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonBack extends StatelessWidget {
  final context;
  final colorIcon;
  final colorGround;
  final width;
  final heigh;
  final size;
  const CustomButtonBack( {Key? key, this.context, this.colorIcon, this.colorGround, this.width, this.heigh, this.size}) : super(key: key);

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
