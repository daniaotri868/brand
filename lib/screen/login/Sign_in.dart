import 'package:brand/Widget/text.dart';
import 'package:brand/cubit/app_cubit.dart';
import 'package:brand/screen/Sign_up.dart';
import 'package:brand/screen/login/cubit_login/log_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Widget/CustomButton.dart';
import '../../Widget/CustomButtonBack.dart';
import '../../Widget/CustomText.dart';
import '../../Widget/customTextField.dart';
import '../../const/const.dart';

class Sign_in extends StatelessWidget {
   Sign_in({Key? key}) : super(key: key);

  @override

  final PasswordFoucs=FocusNode();
  final NameFoucs=FocusNode();
  TextEditingController controllerName=TextEditingController();
  TextEditingController controllerPassword=TextEditingController();
   final fromKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => LogCubit(),
  child: BlocConsumer<LogCubit, LogState>(
    listener: (context, state) {

    },
    builder: (context, state) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Form(
            key: fromKey,
            child: Stack(
              children: [
                Image.asset('assets/images/Group 193.png')
                ,Padding(
                  padding:  REdgeInsetsDirectional.only(end: 33,start: 33),
                  child: Column(
                    children: [
                      const Spacer(),
                      Image.asset('assets/images/Group 194.png',width: 168.63.w,height: 55.87.h,),
                      const Spacer(),
                      CustomTextField(
                        hint_text: AppText.SignHintName,
                        suffix: false,
                        suffix_icon: null,
                        controller:controllerName ,
                        keyboard: TextInputType.name,
                        PasswordFoucs: PasswordFoucs,
                        obsc:false,
                        validate:  (value) {
                          if(value!.isEmpty)
                          {
                            NameFoucs.requestFocus();
                            return "Please make sure the password or user name you are entering is correct";
                          }

                        },
                      ),
                      18.verticalSpace,
                      CustomTextField(
                        hint_text: AppText.SignHintPassword,
                        suffix: true,
                        suffix_icon: IconButton(
                            onPressed: () {
                              AppCubit.get(context).changIconVisib();
                            }, icon:Icon(AppCubit.get(context).Show_Visib? Icons.visibility:Icons.visibility_off,)),
                        controller:controllerPassword ,
                        keyboard: TextInputType.visiblePassword,
                        PasswordFoucs: PasswordFoucs,
                        obsc: AppCubit.get(context).obsc,
                        validate:  (value) {
                          if(value!.isEmpty)
                          {
                            PasswordFoucs.requestFocus();
                            return "Please make sure the password or user name you are entering is correct";
                          }

                        },
                      ),
                      const Spacer(flex: 3),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            flex: 1,
                            child: CustomButtonBack(context: context,colorIcon: pink,colorGround: silverLight,heigh: 59.0,size: 23.0),
                          ),
                          8.horizontalSpace,
                          Flexible(
                            flex: 4,
                            child: CustomButton(
                                color: pink,text: AppText.SingnNext,colorText: Colors.white,onpress: (){
                              if(fromKey.currentState!.validate())
                              {

                                // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("تم")));
                              }
                            }
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(text: AppText.SignHaveAccount,size: 17.sp,color: Silver),
                          TextButton(onPressed: () {
                            print("here");
                             // LogCubit.get(context).SetUser(
                             //     id: 1,
                             //     FirstName: "sam",
                             //     lastName: "otri",
                             //     DialCode: "+963",
                             //     CityId: 1,
                             //     PhoneNumber:"958450946"
                             // );
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                          }, child: CustomText(text: AppText.SignSingnUp,size: 17.sp,color: pink)
                          )
                        ],
                      ),
                      const Spacer(),


                    ],),
                ),
              ],
            ),
          )
      ),
    );
  },
),
);
  }
}
