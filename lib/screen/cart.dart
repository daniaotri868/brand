import 'package:brand/Widget/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widget/CustomItemCart.dart';
import '../Widget/CustomText.dart';
import '../Widget/widget.dart';
import '../const/const.dart';

class Cart extends StatefulWidget {
   Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int index=0;

  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
    bottomNavigationBar: BottomAppBar(
          color: Colors.pink,
          child: Container(
            height: 76.h,
            padding: REdgeInsetsDirectional.only(start: 21,end: 21),
            decoration:  BoxDecoration(
              border: Border.all(color: Colors.transparent),
              borderRadius: const BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10) ),
              color: silverLight,
            ),
            //height: 107.h,
            child:  BottomNavigationBar(
               elevation: 0,
              type: BottomNavigationBarType.fixed,
               backgroundColor: Colors.transparent,
              fixedColor: pink,
              onTap: (value) {
                setState(() {
                  index=value;
                });
              },
              currentIndex:index ,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    label: ""
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.keyboard),
                    label: ""
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.star),
                    label: ""
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_basket_rounded),
                  label: "",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.manage_accounts),
                    label: ""
                ),


              ],
            ),
          )
      ),
      appBar: AppBarShow(
          context: context,
          title:AppText.CartAppbar ,
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
      
      body: Stack(
        children: [
          ListView.separated(
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
          Positioned(
            bottom: 76.h,
              left: 0,
              right: 0,
              child: Container(
                padding: REdgeInsetsDirectional.only(start: 21,end: 21),
               height: 62.h,
               color: pink,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(text: AppText.CartTotalPrice,color: Colors.white,size: 15.sp,),
                    10.horizontalSpace,
                    CustomText(text: AppText.CartNavMony , color: Colors.white,size: 15.sp,),
                    43.horizontalSpace,
                    MaterialButton(
                      onPressed: () {

                    },
                      child: Container(
                      height: 35.h,
                      width: 112.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(text: AppText.CartNavButtomCheck,color: Colors.black,size: 15.sp,),
                          Icon(Icons.arrow_forward_ios,size: 18,color: pink,)
                        ],
                      ),
                    ),
                    )

                  ],
                ),
          ))
        ],
      ),
    );
  }
}
