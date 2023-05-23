import 'package:brand/Widget/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/const.dart';
import 'CustomContainerMony.dart';
import 'CustomText.dart';

class CustomItemCart extends StatelessWidget {
  final String image;
  final String Title;
  final String SubTitle1;
  final String SubTitle2;
  final String mony;
  final String syp;

   CustomItemCart({Key? key, required this.image, required this.Title, required this.SubTitle1, required this.SubTitle2, required this.mony, required this.syp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsetsDirectional.only(start: 21,end: 21,top: 26),
      color: Colors.white,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(image),
          12.horizontalSpace,
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: Title,size: 15.sp,color: Colors.black,),
              Row(
                children: [
                  CustomText(text: SubTitle1,size: 15.sp,color: Silver,),
                  CustomText(text:" _ ",size: 15.sp,color: Silver,),
                  CustomText(text: SubTitle2,size: 15.sp,color: Silver,),
                ],
              ),
              Padding(
                padding: REdgeInsetsDirectional.only(top:  34),
                child: CustomContainerMony(text1: mony,text2: syp),
              ),


            ],
          ),
          const Spacer(),
          Container(
            height: 28.h,
            width: 27.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: pink.withOpacity(0.1),
            ),

            child:Icon(Icons.delete,color: pink,size: 15,)
          )
        ],
      ),
    );
  }
}
