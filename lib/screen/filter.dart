import 'package:brand/Widget/CustomDropButton.dart';
import 'package:brand/Widget/text.dart';
import 'package:brand/Widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widget/CustomButton.dart';
import '../Widget/CustomText.dart';
import '../const/const.dart';

class Filter extends StatefulWidget {
   Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  List<String> itemColor=["color1","color2","color3"];

  String selectItemColor="color1";
  List<String> itemBrand=["brand1","brand2","brand3"];

  String selectItemBrand="brand1";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarShow(context: context,title:  AppText.FilterAppBar),
      body: Padding(
        padding: REdgeInsetsDirectional.only(start: 21,end: 25,bottom: 97),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {

              },
                child: CustomText(text: AppText.FilterDelete,size: 17.sp,color: pink)
            ),
            Row(
              children: [
                Expanded(
                  child: CustomDropButton(selectItem: selectItemColor,itemeList: itemColor,hint: "Color",)
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start: 10.w),
                    child: CustomDropButton(selectItem: selectItemColor,itemeList: itemBrand,hint: "Brand",)
                  ),
                ),
              ],
            ),
            12.verticalSpace,
            Row(
              children: [
                Expanded(
                    child: CustomDropButton(selectItem: selectItemColor,itemeList: itemColor,hint: "Color",)
                ),
                Expanded(
                  child: Padding(
                      padding: EdgeInsetsDirectional.only(start: 10.w),
                      child: CustomDropButton(selectItem: selectItemColor,itemeList: itemBrand,hint: "Brand",)
                  ),
                ),
              ],
            ),



            const Spacer(),
            CustomButton(text: AppText.FilterSearchButton,color: pink,onpress: (){},colorText: Colors.white)
          ],
        ),
      ),
    );
  }
}
