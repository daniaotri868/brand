import 'package:brand/Widget/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/const.dart';
import 'CustomText.dart';

class CustomConntainerMony extends StatelessWidget {
  final text1;
  final text2;
  const CustomConntainerMony({Key? key, this.text1, this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 31.h,
      width: 130.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: silverLight,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(text: text1,color: pink,size: 17.sp),
          CustomText(text: text2,color: Colors.black,size: 17.sp),
        ],
      ),
    );
  }
}
