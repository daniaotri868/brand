import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/const.dart';
import 'CustomText.dart';

class CustomRowIcon extends StatelessWidget {
  final String text;
  final String image;
  const CustomRowIcon({Key? key, required this.text, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image),
        const RSizedBox(width: 17,),
        CustomText(text:text ,color: Silver,size: 15.sp)
      ],
    );
  }
}
