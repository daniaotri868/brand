import 'package:brand/Widget/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../const/const.dart';
import 'CustomText.dart';

class CustomDropButton extends StatelessWidget {
  final selectItem;
  final itemeList;
  final hint;
  const CustomDropButton({Key? key, required this.selectItem, this.itemeList, this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      height:73.0,
      // width: 180.0 ,
      child: Container(
        decoration: BoxDecoration(
            color: silverLight,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: DropdownButtonFormField(
            isExpanded: true,
            isDense: true,
            alignment: Alignment.centerLeft,
            // isDense: true,
            hint:  Text(hint,style: TextStyle(color: Colors.black)),
            icon: Icon(Icons.keyboard_arrow_down_rounded,color: pink),
            iconSize:22,
            decoration: InputDecoration(
              enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: silverLight,)
              ),
              focusedBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.white)
              ),
            ),
            //value: selectItem,
            style:  TextStyle(color: Colors.black,fontSize:20.sp),
            items:itemeList.map<DropdownMenuItem<Object>>((item) => DropdownMenuItem(
                value: item,
                child: Container(alignment: Alignment.centerLeft,child: CustomText(text: item,size: 15.0,color: Colors.black))
            )
            ).toList() ,
            onChanged: (value) {

            },),
        ),
      ),
    );
  }
}
