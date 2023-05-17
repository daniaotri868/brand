import 'package:brand/Widget/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/const.dart';
import '../screen/filter.dart';
import 'CustomButton.dart';

class CustomNavigation extends StatelessWidget {
  const CustomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.transparent,
        child: Container(
          padding: REdgeInsetsDirectional.only(start: 21, end: 21),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10), topLeft: Radius.circular(10)),
            color: Colors.white,
          ),
          height: 107.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                  text: AppText.ViewButtonContact,
                  color: Silver,
                  width: 186.0,
                  colorText: Colors.black,
                  onpress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Filter(),
                        ));
                  }),
              CustomButton(
                  text: AppText.ViewButtonAdd,
                  color: pink,
                  width: 186.0,
                  colorText: Colors.white,
                  onpress: () {}),
            ],
          ),
        ));
  }
}
