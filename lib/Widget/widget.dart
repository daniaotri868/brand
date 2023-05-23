import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../const/const.dart';
import 'CustomText.dart';


AppBar AppBarShow({context,title,action})=> AppBar(
  automaticallyImplyLeading: false,
  toolbarHeight: 95.h,
  backgroundColor: pink,
  shape: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Colors.transparent)
  ),
  title: Padding(
    padding: REdgeInsetsDirectional.only(top: 40),
    child: CustomText(color: Colors.white,text:title,size: 20.sp),
  ),
  actions: [
    Padding(
    padding: REdgeInsetsDirectional.only(end: 21,top: 52,bottom: 12),
    child: action,
    )
  ],
);

AppBar AppBarShowButtom({context,title,action})=> AppBar(
  automaticallyImplyLeading: false,
  toolbarHeight: 146.h,
  backgroundColor: pink,
  shape: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Colors.transparent)
  ),
  title: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomText(color: Colors.white,text:title,size: 20.sp),
      RSizedBox(height: 6,),
      Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              height: 55.h,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: silverLight,
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  hintStyle: TextStyle(fontSize: 17.sp,color: Silver),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: silverLight)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: silverLight)
                  ),
                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: silverLight)
                  ),

                ),
              ),
            ),
          ),
          RSizedBox(width: 7.w,),
          Expanded(
            flex: 1,
              child: Container(
                height: 55.h,
                decoration: BoxDecoration(
                    color: Colors.black,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Center(
                child:  Stack(
                  children: [
                    Icon(Icons.notifications_none),
                    Positioned(
                      left: 17.w,
                        top: 4.h,
                        child: Container(width: 6,height: 6, decoration: BoxDecoration(color: pink,borderRadius: BorderRadius.circular(20)),))
                  ],
                ),
              ),)),
        ],
      ),
    ],
  ),


  // bottom: PreferredSize(
  //   preferredSize:  Size.fromHeight(41.h),
  //   child: Container(
  //     padding: REdgeInsetsDirectional.only(bottom: 21.h),
  //     height: 41.h,
  //     alignment: Alignment.center,
  //
  //     decoration: BoxDecoration(
  //         color: Colors.white,
  //       borderRadius: BorderRadius.circular(8)
  //     ),
  //     child: TextFormField(
  //       obscureText: true,
  //       keyboardType: TextInputType.text,
  //      // controller: ,
  //       validator:(value) {
  //
  //       },
  //       decoration: InputDecoration(
  //         filled: true,
  //         fillColor: silverLight,
  //         hintText: "Search",
  //         hintStyle: TextStyle(fontSize: 17.sp,color: Silver),
  //         border: OutlineInputBorder(
  //             borderRadius: BorderRadius.circular(8),
  //             borderSide: BorderSide(color: silverLight)
  //         ),
  //         focusedBorder: OutlineInputBorder(
  //             borderRadius: BorderRadius.circular(8),
  //             borderSide: BorderSide(color: silverLight)
  //         ),
  //         enabledBorder:OutlineInputBorder(
  //             borderRadius: BorderRadius.circular(8),
  //             borderSide: BorderSide(color: silverLight)
  //         ),
  //
  //
  //       ),
  //     )
  //     ),
  //   ),


);

