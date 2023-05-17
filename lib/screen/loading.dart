import 'dart:async';
import 'package:brand/screen/welcom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widget/CustomText.dart';
import '../Widget/text.dart';


class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const welcom())));
    return Scaffold(
        body:Column(
          children: [
            const Spacer(),
            Stack(
              children: [
                Image.asset('assets/images/Group 73.png'),
                Positioned(
                    top: 289.8.h,
                    left: 141.5.w,
                    right: 141.w,
                    child: Image.asset('assets/images/Group 5.png')
                )
              ],
            ),
            CustomText(text: AppText.LoadingPowered,color:Colors.black ,size: 17.sp),
            CustomText(text: AppText.LoadingAsseebled,color:Colors.black,size: 17.sp ),
            const Spacer()
          ],
        ) ,
    );
  }
}
