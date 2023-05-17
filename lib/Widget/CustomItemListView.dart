import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/const.dart';
import 'CustomText.dart';

class CustomItemList extends StatelessWidget {
  final image;
  final text1;
  final text2;
  final text3;
  const CustomItemList({Key? key, this.image, this.text1, this.text2, this.text3}) : super(key: key);

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
