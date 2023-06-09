import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/const.dart';
import 'CustomText.dart';

class CustomItemList extends StatelessWidget {
  final String image;
  final String  text1;
  final String  text2;
  final String  text3;
  const CustomItemList({Key? key, required this.image, required this.text1, required this.text2, required this.text3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [

            Container(

              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(8),

                  image: DecorationImage(image: AssetImage(image))

              ),

              height: 179.h,
              width: 143.w,

              // child: Image.asset('assets/images/girl1.png',fit: BoxFit.contain),

            ),

            CustomText(text: text1,size: 13.sp,color: Colors.black),

            CustomText(text: text2,size: 13.sp,color:Silver ),

            CustomText(text: text3,size: 13.sp,color: Silver),





          ],

        ),
        Positioned(
            top: 5.h,
            right: 6.w,
            child:  InkWell(
              onTap: () {

              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 10,
                child: Center(child: Icon(Icons.star_rounded,size: 17,color: pink,)),

              ),
            )
        )
      ],

    ) ;
  }
}
