import 'package:brand/Widget/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widget/CustomContainerMony.dart';
import '../Widget/CustomItemCart.dart';
import '../Widget/CustomText.dart';
import '../Widget/widget.dart';
import '../const/const.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarShow(
          context: context,
          title: CustomText(text: AppText.CartAppbar,color: Colors.white,size: 20.sp,),
          action: Container(
            height: 28.h,
            width: 131.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.white
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomText(text: AppText.CartPurchases,size: 17.sp,color: Colors.black,),
                Icon(Icons.refresh_outlined,color: pink,size:19 ,)
              ],
            ),
          )
      ),
      body: ListView.separated(
          itemBuilder:(context, index) =>  CustomItemCart(
              image: 'assets/images/cart${index+1}.png',
              Title:AppText.CartTitle,
               SubTitle1: AppText.CartSubTitle1,
               SubTitle2: AppText.CartSubTitle2,
               mony: AppText.CartMony,
               syp: AppText.CartSYP,
          ) ,
          separatorBuilder:(context, index) =>  9.verticalSpace,
          itemCount: 3),
    );
  }
}
