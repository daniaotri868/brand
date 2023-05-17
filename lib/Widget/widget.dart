
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../const/const.dart';
import 'CustomAppBarBack.dart';
import 'CustomText.dart';


AppBar AppBarShow({context,title})=> AppBar(
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
    child: CustomAppBarBack(context: context),
    )
  ],
);

