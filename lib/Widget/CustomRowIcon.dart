import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/const.dart';
import 'CustomText.dart';

class CustomRowIcon extends StatelessWidget {
  final text;
  final image;
  const CustomRowIcon({Key? key, this.text, this.image}) : super(key: key);

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
