import 'package:brand/Widget/CustomText.dart';
import 'package:brand/Widget/text.dart';
import 'package:brand/const/const.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widget/CustomItemListView.dart';
import '../Widget/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int Dotsindex=0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarShowButtom(context: context,title: AppText.HomeTitleAppBar,),
      body: Padding(
        padding: REdgeInsetsDirectional.only(top: 17.h,bottom: 17.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RSizedBox(
                height: 179.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemBuilder:(context, index) {
                    return Container(
                      width: 143.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(image: AssetImage('assets/images/img1list1.png'))
                      ),
                    );
                    },
                   // separatorBuilder: (context, index) => RSizedBox(width: 19.w),
                    itemCount: 5),
              ),
              CarouselSlider(
                items: [1,2,3].map((e) {
                  return Container(
                      margin: REdgeInsetsDirectional.only(start: 21.w,end: 21.w,top: 17.h),
                      height: 110.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: silverLight,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child:Center(child: CustomText(text:  AppText.HomeAdvertisement,color: Silver, size: 22.sp,)
                      )
                  );
                }).toList(),
                options: CarouselOptions(
                  scrollPhysics: BouncingScrollPhysics(),
                  height: 110.h,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                   setState(() {
                     Dotsindex=index;
                   });
                  },
                ),

              ),
              Center(
                child: DotsIndicator(
                  dotsCount: 3,
                  position: Dotsindex,
                  decorator: DotsDecorator(color: silverLight,activeColor: pink,size: Size(6.h, 6.w),activeSize: Size(4.h, 4.w),spacing: EdgeInsets.all(1)),

                ),
              ),
              Padding(
                  padding: REdgeInsetsDirectional.only(top:17.h,bottom: 17.h ),
                   child: Divider(
                     color: silverLight,
                     thickness: 12.h,
                     endIndent: 0,
                     indent: 0,
                   ),
              ),
              Padding(
                padding: REdgeInsetsDirectional.only(start: 21.w,end: 21.w,bottom: 17.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: AppText.HomeTitleListWoman, size: 17.sp, color: Colors.black),
                    CustomText(text: AppText.HomeTitleListEnd, size: 17.sp, color: pink),
                  ],
                ),
              ),
              RSizedBox(
                height: 232,
                child: Padding(
                  padding: REdgeInsetsDirectional.only(start: 21.w),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const CustomItemList(
                          image: 'assets/images/girl1.png',
                          text1: AppText.ViewListDetail1,
                          text2: AppText.ViewListDetail2,
                          text3: AppText.ViewListDetail3
                      ),
                      separatorBuilder:(context, index) => 19.horizontalSpace,
                      itemCount: 5
                  ),
                ),
              ),
              Padding(
                padding: REdgeInsetsDirectional.only(top:17.h,bottom: 17.h ),
                child: Divider(
                  color: silverLight,
                  thickness: 12.h,
                  endIndent: 0,
                  indent: 0,
                ),
              ),
              Padding(
                padding: REdgeInsetsDirectional.only(start: 21.w,end: 21.w,bottom: 17.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: AppText.HomeTitleListman, size: 17.sp, color: Colors.black),
                    CustomText(text: AppText.HomeTitleListEnd, size: 17.sp, color: pink),
                  ],
                ),
              ),
              RSizedBox(
                height: 232,
                child: Padding(
                  padding: REdgeInsetsDirectional.only(start: 21.w),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const CustomItemList(
                          image: 'assets/images/man.png',
                          text1: AppText.ViewListDetail1,
                          text2: AppText.ViewListDetail2,
                          text3: AppText.ViewListDetail3
                      ),
                      separatorBuilder:(context, index) => 19.horizontalSpace,
                      itemCount: 5
                  ),
                ),
              ),
              Padding(
                padding: REdgeInsetsDirectional.only(top:17.h,bottom: 17.h ),
                child: Divider(
                  color: silverLight,
                  thickness: 12.h,
                  endIndent: 0,
                  indent: 0,
                ),
              ),
              Container(
                  margin: REdgeInsetsDirectional.only(start: 21.w,end: 21.w,top: 17.h),
                  height: 134.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: silverLight,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child:Center(child: CustomText(text:  AppText.HomeAdvertisement,color: Silver, size: 22.sp,)
                  )
              ),
              Padding(
                padding: REdgeInsetsDirectional.only(start: 21.w,end: 21.w,bottom: 17.h,top: 17.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: AppText.HomeTitleListman, size: 17.sp, color: Colors.black),
                    CustomText(text: AppText.HomeTitleListEnd, size: 17.sp, color: pink),
                  ],
                ),
              ),
              RSizedBox(
                height: 232,
                child: Padding(
                  padding: REdgeInsetsDirectional.only(start: 21.w),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const CustomItemList(
                          image: 'assets/images/watch.png',
                          text1: AppText.ViewListDetail1,
                          text2: AppText.ViewListDetail2,
                          text3: AppText.ViewListDetail3
                      ),
                      separatorBuilder:(context, index) => 19.horizontalSpace,
                      itemCount: 5
                  ),
                ),
              ),
              Padding(
                padding: REdgeInsetsDirectional.all(21),
                child: Stack(
                  children: [
                    Container(
                      height: 101.h,
                      width: 101.w,
                      decoration: BoxDecoration(
                          color: silverLight,
                        borderRadius: BorderRadius.circular(8)
                      ),
                    ),
                    Positioned(
                        top: -1,
                        child: Image.asset('assets/images/shirt.png')
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
