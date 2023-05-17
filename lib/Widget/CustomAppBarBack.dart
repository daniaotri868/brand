import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarBack extends StatelessWidget {
  final context;
  const CustomAppBarBack({Key? key, this.context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RSizedBox(
        height:31 ,
        width: 31,
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.black,
            ),
            child: Center(child: Icon(Icons.arrow_back_ios_new,size: 12,color: Colors.white,)),
          ),
        )

      //ButtonBack(context: context,heigh: 31.0,width: 31.0,colorGround: Colors.black,colorIcon: Colors.white,size: 10.0)
    );
  }
}
