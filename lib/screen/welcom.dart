import 'package:brand/Widget/text.dart';
import 'package:brand/const/const.dart';
import 'package:brand/screen/view_prodact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widget/CustomButton.dart';
import '../Widget/CustomText.dart';
import 'Sign_in.dart';
import 'cart.dart';

class welcom extends StatelessWidget {
  const welcom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding:  REdgeInsetsDirectional.all(8),
      child: Column(
        children: [
          const Spacer(),
          // SizedBox(height: 82.h,),
          Image.asset('assets/images/Video_3.png'),
          CustomButton(color: pink,text: AppText.WelcomSignin,width: 361.0, colorText: Colors.white,onpress: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_in(),));
          }),
          SizedBox(height: 20.h,),
          CustomButton(color: silverLight, text: AppText.WelcomAccount,colorText: Colors.black,width: 361.0,onpress: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Cart(),));
          }),
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => viewProdact(),));
          }, child: CustomText(text: AppText.WelcomContinuet,color: Silver,size: 17.sp)),
          const Spacer(),
        ],
      ),
    )
    );
  }
}
