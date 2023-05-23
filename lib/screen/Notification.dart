import 'package:brand/Widget/CustomButton.dart';
import 'package:brand/Widget/CustomText.dart';
import 'package:brand/Widget/text.dart';
import 'package:brand/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/const.dart';


class PageNotification extends StatelessWidget {
  const PageNotification({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          Image.asset('assets/images/notifi.png'),
           Positioned(
            right: 90.w,
               left: 90.w,
               top: 453.h,
              child: CustomText(text: AppText.NotiGetNotified,size: 17.sp,color: Colors.black,)),
          Padding(
            padding:REdgeInsetsDirectional.only(start: 33.w,end: 34.w),
            child: Column(
              children: [
                Spacer(flex: 4,),
                CustomButton(color: pink, colorText: Colors.white, text: AppText.NotiButton1,onpress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage() ,));
                }),
                Padding(
                  padding:REdgeInsetsDirectional.only(top: 20.h),
                  child: CustomButton(color: silverLight, colorText: Colors.black, text: AppText.NotiButton2),
                ),
                Spacer()
              ],),
          ),

        ],
      ),
    );
  }
}
