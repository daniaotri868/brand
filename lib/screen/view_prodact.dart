import 'package:brand/Widget/CustomDropButton.dart';
import 'package:brand/Widget/text.dart';
import 'package:brand/const/const.dart';
import 'package:brand/cubit/app_cubit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widget/CustomAppBarBack.dart';
import '../Widget/CustomButton.dart';
import '../Widget/CustomCycle.dart';
import '../Widget/CustomItemListView.dart';
import '../Widget/CustomRowIcon.dart';
import '../Widget/CustomText.dart';
import 'filter.dart';



class viewProdact extends StatelessWidget {
   viewProdact({Key? key}) : super(key: key);

  final CarouselController carouselController=CarouselController();

   List<String> itemColor=["color1","color2","color3"];

   String selectItemColor="color1";
   List<String> itemBrand=["brand1","brand2","brand3"];

   String selectItemBrand="brand1";

  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
  builder: (context, state) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
            padding: REdgeInsetsDirectional.only(start: 21,end: 21),
            decoration:  BoxDecoration(
            border: Border.all(color: Colors.transparent),
            borderRadius: const BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10) ),
            color: Colors.white,
          ),
          height: 107.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(text: AppText.ViewButtonContact,color: Silver,width:186.0,colorText:Colors.black,onpress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Filter(),));
              }  ),
              CustomButton(text: AppText.ViewButtonAdd,color: pink,width:186.0,colorText:Colors.white,onpress: () {}),
            ],
          ),
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CarouselSlider(
                  items: [1,2,3].map((e) {
                    return ClipRRect(
                        child: Image.asset('assets/images/girl$e.png',fit: BoxFit.cover,));
                  }).toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    scrollPhysics: BouncingScrollPhysics(),
                    height: 535.h,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                     AppCubit.get(context).changecycle(index);
                    },
                  ),
                ),
                Positioned(
                  top: 500.h,
                  left: 197.w,
                  child:   CustomCycle(index: 3,),
                ),
                Positioned(
                  top: 55.h,
                    //height: 21.w,
                    left: 376.w,
                    child:CustomAppBarBack(context: context)
                )
              ],
            ),
            Divider(
              thickness: 5,
              indent: 0,
              endIndent: 0,
              height: 0,
              color: pink,
            ),
            Padding(
              padding: REdgeInsetsDirectional.only(start: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  15.verticalSpace,
                  CustomText(text: AppText.ViewCream,size: 20.sp,color: Colors.black),
                  6.verticalSpace,
                  Row(
                    children: [
                      Image.asset('assets/images/icon1.png'),
                      CustomText(text: AppText.Viewicon1,color: Silver,size: 15.sp),
                      39.horizontalSpace,
                      Image.asset('assets/images/icon2.png'),
                      CustomText(text: AppText.Viewicon2,color: Silver,size: 15.sp),

                  ],),
                  13.verticalSpace,
                  Container(
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
                        CustomText(text: AppText.ViewMony,color: pink,size: 17.sp),
                        CustomText(text: AppText.ViewSYP,color: Colors.black,size: 17.sp),
                      ],
                    ),
                  ),
                  15.verticalSpace,
                  CustomText(text: AppText.ViewInformation,color: Colors.black,size: 17.sp),
                  8.verticalSpace,
                  const CustomRowIcon(text: AppText.ViewInformation1,image: 'assets/images/icon3.png'),
                  7.verticalSpace,
                  const CustomRowIcon(text: AppText.ViewInformation2,image: 'assets/images/icon4.png'),
                  7.verticalSpace,
                  const CustomRowIcon(text: AppText.ViewInformation3,image: 'assets/images/icon5.png'),
                  16.verticalSpace,
                  CustomText(text: AppText.ViewLike,color: Colors.black,size: 17.sp),
                  8.verticalSpace,
                  RSizedBox(
                    height: 232,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>const CustomItemList(
                            image: 'assets/images/girl1.png',
                            text1: AppText.ViewListDetail1,
                            text2: AppText.ViewListDetail2,
                            text3: AppText.ViewListDetail3
                        ),
                        separatorBuilder:(context, index) => 19.horizontalSpace,
                        itemCount: 5
                    ),
                  ),
                  107.verticalSpace,
                ],
              ),
            )

          ],
        ),
      ),
    );
  },
);
  }
}
//doteindectaor

// padding: REdgeInsetsDirectional.only(start: 21,end: 21),