import 'package:brand/Widget/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/const.dart';
import 'CustomContainerMony.dart';
import 'CustomText.dart';

class CustomItemCart extends StatelessWidget {
  final image;
  final Title;
  final SubTitle1;
  final SubTitle2;
  final mony;
  final syp;

   CustomItemCart({Key? key, this.image, this.Title, this.SubTitle1, this.SubTitle2, this.mony, this.syp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsetsDirectional.only(start: 21),
      color: Colors.white,
      width: double.infinity,
      child: Padding(
        padding: REdgeInsetsDirectional.only(start: 21,end: 21,top: 26),
        child: Row(
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
                  child: CustomConntainerMony(text1: mony,text2: syp),
                ),


              ],
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: pink.withOpacity(0.1),
              ),

              child: IconButton(onPressed: () {

              }, icon: Icon(Icons.delete,color: pink,size: 22,)),
            )
          ],
        ),
      ),
    );
  }
}
